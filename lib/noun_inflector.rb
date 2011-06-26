# coding: utf-8
module NounInflector

  def self.inflect(lemma, inflection)
    if lemma[-1] == 'ή'
      lemma[0..-2] + D1_ENDINGS[inflection]
    elsif lemma[-2..-1] == 'ός'
      lemma[0..-3] + D2_ACCENTED_ENDINGS[inflection]
    elsif lemma[-2..-1] == 'ος'
      stem = lemma[0..-3]
      stem = move_oxia_to_end(stem) if [:gs, :ds, :gp, :dp, :ap].include?(inflection)
      stem + D2_UNACCENTED_ENDINGS[inflection]
    end
  end

private

  def self.move_oxia_to_end(stem)
    new_stem = stem.tr('άἄἅᾴέἔἕήἤἥῄίἴἵόὄὅύὔὕώὤὥῴ', 'αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ')
    i = new_stem.rindex(/[αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ]/)
    new_stem[i] = stem[i].tr('αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ', 'άἄἅᾴέἔἕήἤἥῄίἴἵόὄὅύὔὕώὤὥῴ')
    new_stem
  end

  D1_ENDINGS = {
    :ns => 'ή',  :np => 'αί',
    :gs => 'ῆς', :gp => 'ῶν',
    :ds => 'ῇ',  :dp => 'αῖς',
    :as => 'ήν', :ap => 'άς',
    :vs => 'ή',  :vp => 'αί'
  }

  D2_UNACCENTED_ENDINGS = {
    :ns => 'ος', :np => 'οι',
    :gs => 'ου', :gp => 'ων',
    :ds => 'ῳ',  :dp => 'οις',
    :as => 'ον', :ap => 'ους',
    :vs => 'ε',  :vp => 'οι'
  }
  D2_ACCENTED_ENDINGS = {
    :ns => 'ός', :np => 'οί',
    :gs => 'οῦ', :gp => 'ῶν',
    :ds => 'ῷ',  :dp => 'οῖς',
    :as => 'όν', :ap => 'ούς',
    :vs => 'έ',  :vp => 'οί'
  }

end
