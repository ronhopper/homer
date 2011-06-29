require 'zlib'

class Lexicon

  attr_accessor :filename

  def initialize(filename)
    @filename = filename
  end

  def [](key)
    load unless @lexemes
    @lexemes[key]
  end

private

  def load
    @lexemes = {}
    Zlib::GzipReader.open(@filename) do |gz|
      gz.each_line do |line|
        fields = line.chomp.split('|')
        key = fields[0].to_sym
        lemma = fields[1]
        pos = fields[2].downcase.to_sym
        attributes = fields[3].split.map(&:to_sym) if fields[3]
        @lexemes[key] = Lexeme.new(lemma, pos, attributes || [])
      end
    end
  end

end
