require 'zlib'

class SourceDocument

  attr_accessor :filename

  def initialize(filename)
    @filename = filename
  end

  def words
    load unless @words
    @words
  end

  def lines
    load unless @lines
    @lines
  end

private

  def lexicon=(filename)
    @lexicon = Lexicon.new(File.dirname(__FILE__) + '/../../data/' + filename)
  end

  def load
    @words = []
    @lines = {}
    Zlib::GzipReader.open(@filename) do |gz|
      header = true
      gz.each_line do |line|
        if header
          k, v = line.split(':')
          if k && v
            send "#{k.strip}=".to_sym, v.strip
          else
            header = false
          end
        else
          fields = line.chomp.split('|')
          start_i = @words.length
          fields[1..-1].each do |field|
            form, key, inf = field.split(/[(:)]/)
            @words << Word.new(form, key && @lexicon[key.to_sym], inf && inf.downcase.to_sym)
          end
          stop_i = @words.length
          @lines[fields[0].to_sym] = @words[start_i...stop_i]
        end
      end
    end
  end

end
