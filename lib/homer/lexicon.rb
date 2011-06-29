require 'zlib'

class Lexicon

  attr_accessor :filename

  def initialize(filename)
    @filename = filename
  end

  def find(key)
    @lexemes ||= load_lexemes
    @lexemes[key]
  end

private

  def load_lexemes
    data = {}
    Zlib::GzipReader.open(@filename) do |gz|
      gz.each_line do |line|
        fields = line.chomp.split('|')
        key = fields[0].to_sym
        lemma = fields[1]
        pos = fields[2].downcase.to_sym
        attributes = fields[3].split.map(&:to_sym) if fields[3]
        data[key] = Lexeme.new(lemma, pos, attributes || [])
      end
    end
    data
  end

end

=begin

    datafile = File.join(File.dirname(__FILE__), '..', '..', 'data', 'westcott_hort_new_testament.psv')
    @data = {}
    File.foreach(datafile) do |line|
      f = line.chomp.split('|')
      b = f[0].to_sym
      c = f[1].to_i
      v = f[2].to_i
      words = []
      unless f[3].nil?
        f[3].split(' ').each do |w|
          m = w.split(/[(:)]/)
          words << Word.new(m[0], Lexicon[m[1].to_i], m[2] && m[2].to_sym)
        end
      end
      @data[b] ||= []
      @data[b][c] ||= []
      @data[b][c][v] = Verse.new(self, b, c, v, words)
    end
  end

  def self.[](book, chapter, verse)
    reload unless @data
    @data[book][chapter][verse]
=end
