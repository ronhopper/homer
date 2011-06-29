# coding: utf-8
module NounInflector

  def self.inflect(lemma, inflection)
    case lemma
    when /[αάηή]ς?/ then inflect_d1(lemma, inflection)
    when /[οό][ςν]$/ then inflect_d2(lemma, inflection)
    end
  end

private

  def self.inflect_d1(lemma, inflection)
    case kind = lemma[-2, 2].remove_greek_accent
    when /.η/                  then kind = 'Xη'
    when /[βγδζθκλμνξπστφχψ]α/ then kind = 'Cα'
    when /.α/                  then kind = 'Vα'
    end
    ivow = (kind[-1] == 'ς' ? -2 : -1)
    form = lemma[0...ivow] + D1_ENDINGS[kind.to_sym][inflection]
    if 'άή'.include?(lemma[ivow])
      if [:gs, :ds, :gp, :dp].include?(inflection)
        form.add_greek_perispomenon
      else
        form.add_greek_oxytone
      end
    elsif inflection == :gp
      form.add_greek_perispomenon
    elsif [:gs, :ds, :dp].include?(inflection) || (kind == 'Vα' && inflection == :ap)
      form.add_greek_paroxytone
    elsif kind == 'Xη' && inflection == :np
      form.add_greek_properispomenon
    else
      form
    end
  end

  def self.inflect_d2(lemma, inflection)
    form = lemma[0..-3] + D2_ENDINGS[lemma[-1].to_sym][inflection]
    if lemma[-2] == 'ό'
      if [:gs, :ds, :gp, :dp].include?(inflection)
        form.add_greek_perispomenon
      else
        form.add_greek_oxytone
      end
    elsif [:gs, :ds, :gp, :dp].include?(inflection) || (lemma[-1] == 'ς' && inflection == :ap)
      form.add_greek_paroxytone
    else
      form
    end
  end

  D1_ENDINGS = {
    :Vα => { :ns => 'α',  :np => 'αι',
             :gs => 'ας', :gp => 'ων',
             :ds => 'ᾳ',  :dp => 'αις',
             :as => 'αν', :ap => 'ας',
             :vs => 'α',  :vp => 'αι' },
    :Xη => { :ns => 'η',  :np => 'αι',
             :gs => 'ης', :gp => 'ων',
             :ds => 'ῃ',  :dp => 'αις',
             :as => 'ην', :ap => 'ας',
             :vs => 'η',  :vp => 'αι' },
    :Cα => { :ns => 'α',  :np => 'αι',
             :gs => 'ης', :gp => 'ων',
             :ds => 'ῃ',  :dp => 'αις',
             :as => 'αν', :ap => 'ας',
             :vs => 'α',  :vp => 'αι' },
    :ας => { :ns => 'ας', :np => 'αι',
             :gs => 'ου', :gp => 'ων',
             :ds => 'ᾳ',  :dp => 'αις',
             :as => 'αν', :ap => 'ας',
             :vs => 'α',  :vp => 'αι' },
    :ης => { :ns => 'ης', :np => 'αι',
             :gs => 'ου', :gp => 'ων',
             :ds => 'ῃ',  :dp => 'αις',
             :as => 'ην', :ap => 'ας',
             :vs => 'α',  :vp => 'αι' }
  }

  D2_ENDINGS = {
    :ς => { :ns => 'ος', :np => 'οι',
            :gs => 'ου', :gp => 'ων',
            :ds => 'ῳ',  :dp => 'οις',
            :as => 'ον', :ap => 'ους',
            :vs => 'ε',  :vp => 'οι' },
    :ν => { :ns => 'ον', :np => 'α',
            :gs => 'ου', :gp => 'ων',
            :ds => 'ῳ',  :dp => 'οις',
            :as => 'ον', :ap => 'α',
            :vs => 'ον', :vp => 'α'  }
  }

end
