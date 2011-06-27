# coding: utf-8
module NounInflector

  def self.inflect(lemma, inflection)
    if lemma[-1] == 'ή'
      lemma[0..-2] + D1_ENDINGS[inflection]
    elsif lemma[-2..-1] == 'ός'
      lemma[0..-3] + D2MF_ACCENTED_ENDINGS[inflection]
    elsif lemma[-2..-1] == 'όν'
      lemma[0..-3] + D2N_ACCENTED_ENDINGS[inflection]
    elsif lemma[-2..-1] == 'ος'
      stem = lemma[0..-3]
      stem = move_oxia_to_last_vowel(stem) if [:gs, :ds, :gp, :dp, :ap].include?(inflection)
      stem + D2MF_UNACCENTED_ENDINGS[inflection]
    elsif lemma[-2..-1] == 'ον'
      stem = lemma[0..-3]
      stem = move_oxia_to_last_vowel(stem) if [:gs, :ds, :gp, :dp].include?(inflection)
      stem + D2N_UNACCENTED_ENDINGS[inflection]
    end
  end

private

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

  D1_ENDINGS = {
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

  D2N_UNACCENTED_ENDINGS = {
    :ns => 'ον', :np => 'α',
    :gs => 'ου', :gp => 'ων',
    :ds => 'ῳ',  :dp => 'οις',
    :as => 'ον', :ap => 'α',
    :vs => 'ον', :vp => 'α'
  }

  D2MF_ACCENTED_ENDINGS = {
    :ns => 'ός', :np => 'οί',
    :gs => 'οῦ', :gp => 'ῶν',
    :ds => 'ῷ',  :dp => 'οῖς',
    :as => 'όν', :ap => 'ούς',
    :vs => 'έ',  :vp => 'οί'
  }

  D2N_ACCENTED_ENDINGS = {
    :ns => 'όν', :np => 'ά',
    :gs => 'οῦ', :gp => 'ῶν',
    :ds => 'ῷ',  :dp => 'οῖς',
    :as => 'όν', :ap => 'ά',
    :vs => 'όν', :vp => 'ά'
  }

end
