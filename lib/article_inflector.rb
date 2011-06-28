# coding: utf-8
module ArticleInflector

  def self.inflect(lemma, inflection)
    ARTICLES[inflection]
  end

private

  ARTICLES = {
    :nsm => 'ὁ',   :npm => 'οἱ',
    :gsm => 'τοῦ', :gpm => 'τῶν',
    :dsm => 'τῷ',  :dpm => 'τοῖς',
    :asm => 'τόν', :apm => 'τούς',

    :nsf => 'ἡ',   :npf => 'αἱ',
    :gsf => 'τῆς', :gpf => 'τῶν',
    :dsf => 'τῇ',  :dpf => 'ταῖς',
    :asf => 'τήν', :apf => 'τάς',

    :nsn => 'τό',  :npn => 'τά',
    :gsn => 'τοῦ', :gpn => 'τῶν',
    :dsn => 'τῷ',  :dpn => 'τοῖς',
    :asn => 'τό',  :apn => 'τά'
  }

end
