# coding: utf-8
module NounInflector

  def self.inflect(lemma, inflection)
    lemma[0..-2] + ENDINGS[inflection]
  end

private

  ENDINGS = {
    :ns => 'ή',  :np => 'αί',
    :gs => 'ῆς', :gp => 'ῶν',
    :ds => 'ῇ',  :dp => 'αῖς',
    :as => 'ήν', :ap => 'άς',
    :vs => 'ή',  :vp => 'αί'
  }

end
