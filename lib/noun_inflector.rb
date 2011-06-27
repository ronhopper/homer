# coding: utf-8
module NounInflector

  def self.inflect(lemma, inflection)
    case lemma
    when /[βγδζθκλμνξπστφχψ]α$/ then inflect_d1_alpha_impure_early_accent(lemma, inflection)
    when /α$/ then inflect_d1_alpha_pure_early_accent(lemma, inflection)
    when /ά$/ then inflect_d1_alpha_pure_final_accent(lemma, inflection)
    when /η$/ then inflect_d1_eta_pure_early_accent(lemma, inflection)
    when /ή$/ then inflect_d1_eta_pure_final_accent(lemma, inflection)
    when /ος$/ then inflect_d2_mf_early_accent(lemma, inflection)
    when /ός$/ then inflect_d2_mf_final_accent(lemma, inflection)
    when /ον$/ then inflect_d2_n_early_accent(lemma, inflection)
    when /όν$/ then inflect_d2_n_final_accent(lemma, inflection)
    end
  end

private

  def self.inflect_d1_alpha_impure_early_accent(lemma, inflection)
    stem = lemma[0..-2]
    if inflection == :gp
      stem = remove_accent(stem)
    elsif [:gs, :ds, :dp].include?(inflection)
      stem = move_oxia_to_last_vowel(stem)
    end
    stem + D1X_UNACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d1_alpha_pure_early_accent(lemma, inflection)
    stem = lemma[0..-2]
    if inflection == :gp
      stem = remove_accent(stem)
    elsif [:gs, :ds, :dp, :ap].include?(inflection)
      stem = move_oxia_to_last_vowel(stem)
    end
    stem + D1A_UNACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d1_alpha_pure_final_accent(lemma, inflection)
    lemma[0..-2] + D1A_ACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d1_eta_pure_early_accent(lemma, inflection)
    stem = lemma[0..-2]
    if inflection == :np
      stem = move_circumflex_to_last_vowel(stem)
    elsif inflection == :gp
      stem = remove_accent(stem)
    end
    stem + D1H_UNACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d1_eta_pure_final_accent(lemma, inflection)
    lemma[0..-2] + D1H_ACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d2_mf_early_accent(lemma, inflection)
    stem = lemma[0..-3]
    stem = move_oxia_to_last_vowel(stem) if [:gs, :ds, :gp, :dp, :ap].include?(inflection)
    stem + D2MF_UNACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d2_mf_final_accent(lemma, inflection)
    lemma[0..-3] + D2MF_ACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d2_n_early_accent(lemma, inflection)
    stem = lemma[0..-3]
    stem = move_oxia_to_last_vowel(stem) if [:gs, :ds, :gp, :dp].include?(inflection)
    stem + D2N_UNACCENTED_ENDINGS[inflection]
  end

  def self.inflect_d2_n_final_accent(lemma, inflection)
    lemma[0..-3] + D2N_ACCENTED_ENDINGS[inflection]
  end

  def self.move_circumflex_to_last_vowel(stem)
    stem = remove_accent(stem)
    i = stem.rindex(/[αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ]/)
    stem[i] = stem[i].tr('αἀἁᾳηἠἡῃιἰἱυὐὑωὠὡῳ', 'ᾶἆἇᾷῆἦἧῇῖἶἷῦὖὗῶὦὧῷ')
    stem
  end

  def self.move_oxia_to_last_vowel(stem)
    stem = remove_accent(stem)
    i = stem.rindex(/[αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ]/)
    stem[i] = stem[i].tr('αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ', 'άἄἅᾴέἔἕήἤἥῄίἴἵόὄὅύὔὕώὤὥῴ')
    stem
  end

  def self.remove_accent(word)
    word.tr 'ὰάᾶἂἄἆἃἅἇᾲᾴᾷὲέἒἔἓἕὴήῆἢἤἦἣἥἧῂῄῇὶίῖἲἴἶἳἵἷὸόὂὄὃὅὺύῦὒὔὖὓὕὗὼώῶὢὤὦὣὥὧῲῴῷ',
            'αααἀἀἀἁἁἁᾳᾳᾳεεἐἐἑἑηηηἠἠἠἡἡἡῃῃῃιιιἰἰἰἱἱἱοοὀὀὁὁυυυὐὐὐὑὑὑωωωὠὠὠὡὡὡῳῳῳ'
  end

  D1X_UNACCENTED_ENDINGS = {
    :ns => 'α',  :np => 'αι',
    :gs => 'ης', :gp => 'ῶν',
    :ds => 'ῃ',  :dp => 'αις',
    :as => 'αν', :ap => 'ας',
    :vs => 'α',  :vp => 'αι'
  }

  D1A_UNACCENTED_ENDINGS = {
    :ns => 'α',  :np => 'αι',
    :gs => 'ας', :gp => 'ῶν',
    :ds => 'ᾳ',  :dp => 'αις',
    :as => 'αν', :ap => 'ας',
    :vs => 'α',  :vp => 'αι'
  }

  D1A_ACCENTED_ENDINGS = {
    :ns => 'ά',  :np => 'αί',
    :gs => 'ᾶς', :gp => 'ῶν',
    :ds => 'ᾷ',  :dp => 'αῖς',
    :as => 'άν', :ap => 'άς',
    :vs => 'ά',  :vp => 'αί'
  }

  D1H_UNACCENTED_ENDINGS = {
    :ns => 'η',  :np => 'αι',
    :gs => 'ης', :gp => 'ῶν',
    :ds => 'ῃ',  :dp => 'αις',
    :as => 'ην', :ap => 'ας',
    :vs => 'η',  :vp => 'αι'
  }

  D1H_ACCENTED_ENDINGS = {
    :ns => 'ή',  :np => 'αί',
    :gs => 'ῆς', :gp => 'ῶν',
    :ds => 'ῇ',  :dp => 'αῖς',
    :as => 'ήν', :ap => 'άς',
    :vs => 'ή',  :vp => 'αί'
  }

  D2MF_UNACCENTED_ENDINGS = {
    :ns => 'ος', :np => 'οι',
    :gs => 'ου', :gp => 'ων',
    :ds => 'ῳ',  :dp => 'οις',
    :as => 'ον', :ap => 'ους',
    :vs => 'ε',  :vp => 'οι'
  }

  D2MF_ACCENTED_ENDINGS = {
    :ns => 'ός', :np => 'οί',
    :gs => 'οῦ', :gp => 'ῶν',
    :ds => 'ῷ',  :dp => 'οῖς',
    :as => 'όν', :ap => 'ούς',
    :vs => 'έ',  :vp => 'οί'
  }

  D2N_UNACCENTED_ENDINGS = {
    :ns => 'ον', :np => 'α',
    :gs => 'ου', :gp => 'ων',
    :ds => 'ῳ',  :dp => 'οις',
    :as => 'ον', :ap => 'α',
    :vs => 'ον', :vp => 'α'
  }

  D2N_ACCENTED_ENDINGS = {
    :ns => 'όν', :np => 'ά',
    :gs => 'οῦ', :gp => 'ῶν',
    :ds => 'ῷ',  :dp => 'οῖς',
    :as => 'όν', :ap => 'ά',
    :vs => 'όν', :vp => 'ά'
  }

end
