# coding: utf-8
module GreekString

  GREEK_UPPER = 'ΑᾺΆἈἊἌἎἉἋἍἏᾼΒΓΔΕῈΈἘἚἜἙἛἝΖΗῊΉἨἪἬἮἩἫἭἯῌΘΙῚΊἸἺἼἾἹἻἽἿΚΛΜΝΞΟῸΌὈὊὌὉὋὍΠΡῬΣΣΤΥῪΎὙὛὝὟΦΧΨΩῺΏὨὪὬὮὩὫὭὯῼ'
  GREEK_LOWER = 'αὰάἀἂἄἆἁἃἅἇᾳβγδεὲέἐἒἔἑἓἕζηὴήἠἢἤἦἡἣἥἧῃθιὶίἰἲἴἶἱἳἵἷκλμνξοὸόὀὂὄὁὃὅπρῥςστυὺύὑὓὕὗφχψωὼώὠὢὤὦὡὣὥὧῳ'

  GREEK_ACCENTED   = 'ὰάᾶἂἄἆἃἅἇᾲᾴᾷὲέἒἔἓἕὴήῆἢἤἦἣἥἧῂῄῇὶίῖἲἴἶἳἵἷὸόὂὄὃὅὺύῦὒὔὖὓὕὗὼώῶὢὤὦὣὥὧῲῴῷ'
  GREEK_UNACCENTED = 'αααἀἀἀἁἁἁᾳᾳᾳεεἐἐἑἑηηηἠἠἠἡἡἡῃῃῃιιιἰἰἰἱἱἱοοὀὀὁὁυυυὐὐὐὑὑὑωωωὠὠὠὡὡὡῳῳῳ'

  GREEK_VOWELS_UNACCENTED       = 'αἀἁᾳεἐἑηἠἡῃιἰἱοὀὁυὐὑωὠὡῳ'
  GREEK_VOWELS_WITH_OXIA        = 'άἄἅᾴέἔἕήἤἥῄίἴἵόὄὅύὔὕώὤὥῴ'
  GREEK_VOWELS_WITH_PERISPOMENE = 'ᾶἆἇᾷ***ῆἦἧῇῖἶἷ***ῦὖὗῶὦὧῷ'

  GREEK_DIPTHONG_REGEXP = /[αᾳεο][ιἰἱυὐὑ]|υ[ιἰἱ]|[ηῃ][υὐὑ]/

  def downcase_greek
    tr(GREEK_UPPER, GREEK_LOWER).sub(/σ$/, 'ς')
  end

  def upcase_greek
    tr(GREEK_LOWER, GREEK_UPPER)
  end

  def remove_greek_accent
    tr(GREEK_ACCENTED, GREEK_UNACCENTED)
  end

  def add_greek_oxytone
    s = remove_greek_accent
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/)
    s[i] = s[i].tr(GREEK_VOWELS_UNACCENTED, GREEK_VOWELS_WITH_OXIA)
    s
  end

  def add_greek_paroxytone
    s = remove_greek_accent
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/) - 1
    i -= 1 if s[i, 2] =~ GREEK_DIPTHONG_REGEXP
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/, i)
    s[i] = s[i].tr(GREEK_VOWELS_UNACCENTED, GREEK_VOWELS_WITH_OXIA)
    s
  end

  def add_greek_proparoxytone
    s = remove_greek_accent
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/) - 1
    i -= 1 if s[i, 2] =~ GREEK_DIPTHONG_REGEXP
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/, i) - 1
    i -= 1 if s[i, 2] =~ GREEK_DIPTHONG_REGEXP
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/, i)
    s[i] = s[i].tr(GREEK_VOWELS_UNACCENTED, GREEK_VOWELS_WITH_OXIA)
    s
  end

  def add_greek_perispomenon
    s = remove_greek_accent
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/)
    s[i] = s[i].tr(GREEK_VOWELS_UNACCENTED, GREEK_VOWELS_WITH_PERISPOMENE)
    s
  end

  def add_greek_properispomenon
    s = remove_greek_accent
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/) - 1
    i -= 1 if s[i, 2] =~ GREEK_DIPTHONG_REGEXP
    i = s.rindex(/[#{GREEK_VOWELS_UNACCENTED}]/, i)
    s[i] = s[i].tr(GREEK_VOWELS_UNACCENTED, GREEK_VOWELS_WITH_PERISPOMENE)
    s
  end

end
