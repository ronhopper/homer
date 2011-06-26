# coding: utf-8
require 'spec_helper'

describe NounInflector do

  describe "first-declension accented eta nouns" do
    specify { subject.inflect('ἀρχή', :ns).should == 'ἀρχή' }
    specify { subject.inflect('ἀρχή', :gs).should == 'ἀρχῆς' }
    specify { subject.inflect('ἀρχή', :ds).should == 'ἀρχῇ' }
    specify { subject.inflect('ἀρχή', :as).should == 'ἀρχήν' }
    specify { subject.inflect('ἀρχή', :vs).should == 'ἀρχή' }
    specify { subject.inflect('ἀρχή', :np).should == 'ἀρχαί' }
    specify { subject.inflect('ἀρχή', :gp).should == 'ἀρχῶν' }
    specify { subject.inflect('ἀρχή', :dp).should == 'ἀρχαῖς' }
    specify { subject.inflect('ἀρχή', :ap).should == 'ἀρχάς' }
    specify { subject.inflect('ἀρχή', :vp).should == 'ἀρχαί' }
  end

  describe "second-declension nouns (early-accent)" do
    specify { subject.inflect('ἄνθρωπος', :ns).should == 'ἄνθρωπος' }
    specify { subject.inflect('ἄνθρωπος', :gs).should == 'ἀνθρώπου' }
    specify { subject.inflect('ἄνθρωπος', :ds).should == 'ἀνθρώπῳ' }
    specify { subject.inflect('ἄνθρωπος', :as).should == 'ἄνθρωπον' }
    specify { subject.inflect('ἄνθρωπος', :vs).should == 'ἄνθρωπε' }
    specify { subject.inflect('ἄνθρωπος', :np).should == 'ἄνθρωποι' }
    specify { subject.inflect('ἄνθρωπος', :gp).should == 'ἀνθρώπων' }
    specify { subject.inflect('ἄνθρωπος', :dp).should == 'ἀνθρώποις' }
    specify { subject.inflect('ἄνθρωπος', :ap).should == 'ἀνθρώπους' }
    specify { subject.inflect('ἄνθρωπος', :vp).should == 'ἄνθρωποι' }
  end

  describe "second-declension nouns (final-accent)" do
    specify { subject.inflect('ἀδελφός', :ns).should == 'ἀδελφός' }
    specify { subject.inflect('ἀδελφός', :gs).should == 'ἀδελφοῦ' }
    specify { subject.inflect('ἀδελφός', :ds).should == 'ἀδελφῷ' }
    specify { subject.inflect('ἀδελφός', :as).should == 'ἀδελφόν' }
    specify { subject.inflect('ἀδελφός', :vs).should == 'ἀδελφέ' }
    specify { subject.inflect('ἀδελφός', :np).should == 'ἀδελφοί' }
    specify { subject.inflect('ἀδελφός', :gp).should == 'ἀδελφῶν' }
    specify { subject.inflect('ἀδελφός', :dp).should == 'ἀδελφοῖς' }
    specify { subject.inflect('ἀδελφός', :ap).should == 'ἀδελφούς' }
    specify { subject.inflect('ἀδελφός', :vp).should == 'ἀδελφοί' }
  end

=begin
  describe "first-declension eta nouns with penultimate accent" do
  LETTERS = "αβγδεζηθικλμνξοπρςστυφχψω"
  ALPHA   = "αὰάᾶἀἂἄἆἁἃἅἇᾳᾲᾴᾷ"
  EPSILON = "εὲέ ἐἒἔ ἑἓἕ     "
  ETA     = "ηὴήῆἠἢἤἦἡἣἥἧῃῂῄῇ"
  IOTA    = "ιὶίῖἰἲἴἶἱἳἵἷ    "
  OMICRON = "οὸό ὀὂὄ ὁὃὅ     "
  RHO     = "ρ   ῤ   ῥ       "
  UPSILON = "υὺύῦὐὒὔὖὑὓὕὗ    "
  OMEGA   = "ωὼώῶὠὢὤὦὡὣὥὧῳῲῴῷ"
    specify { subject.inflect('ἀγάπη', :ns).should == 'ἀγάπη' }
    specify { subject.inflect('ἀγάπη', :gs).should == 'ἀγάπης' }
    specify { subject.inflect('ἀγάπη', :ds).should == 'ἀγάπῃ' }
    specify { subject.inflect('ἀγάπη', :as).should == 'ἀγάπην' }
    specify { subject.inflect('ἀγάπη', :vs).should == 'ἀγάπη' }
    specify { subject.inflect('ἀγάπη', :np).should == 'ἀγάπαι' }
    specify { subject.inflect('ἀγάπη', :gp).should == 'ἀγάπῶν' }
    specify { subject.inflect('ἀγάπη', :dp).should == 'ἀγάπαις' }
    specify { subject.inflect('ἀγάπη', :ap).should == 'ἀγάπας' }
    specify { subject.inflect('ἀγάπη', :vp).should == 'ἀγάπαι' }
  end
=end

end

