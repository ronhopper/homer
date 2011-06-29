class Lexeme

  attr_reader :lemma, :pos, :attributes

  def initialize(lemma, pos, attributes)
    @lemma = lemma
    @pos = pos
    @attributes = attributes
  end

end
