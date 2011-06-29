class Word

  attr_reader :form, :lexeme, :inflection

  def initialize(form, lexeme, inflection)
    @form = form
    @lexeme = lexeme
    @inflection = inflection
  end

end

