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

  describe "second-declension nouns (penult-circumflex)" do
    specify { subject.inflect('δοῦλος', :ns).should == 'δοῦλος' }
    specify { subject.inflect('δοῦλος', :gs).should == 'δούλου' }
    specify { subject.inflect('δοῦλος', :ds).should == 'δούλῳ' }
    specify { subject.inflect('δοῦλος', :as).should == 'δοῦλον' }
    specify { subject.inflect('δοῦλος', :vs).should == 'δοῦλε' }
    specify { subject.inflect('δοῦλος', :np).should == 'δοῦλοι' }
    specify { subject.inflect('δοῦλος', :gp).should == 'δούλων' }
    specify { subject.inflect('δοῦλος', :dp).should == 'δούλοις' }
    specify { subject.inflect('δοῦλος', :ap).should == 'δούλους' }
    specify { subject.inflect('δοῦλος', :vp).should == 'δοῦλοι' }
  end

  describe "second-declension nouns (nueter early-accent)" do
    specify { subject.inflect('δῶρον', :ns).should == 'δῶρον' }
    specify { subject.inflect('δῶρον', :gs).should == 'δώρου' }
    specify { subject.inflect('δῶρον', :ds).should == 'δώρῳ' }
    specify { subject.inflect('δῶρον', :as).should == 'δῶρον' }
    specify { subject.inflect('δῶρον', :vs).should == 'δῶρον' }
    specify { subject.inflect('δῶρον', :np).should == 'δῶρα' }
    specify { subject.inflect('δῶρον', :gp).should == 'δώρων' }
    specify { subject.inflect('δῶρον', :dp).should == 'δώροις' }
    specify { subject.inflect('δῶρον', :ap).should == 'δῶρα' }
    specify { subject.inflect('δῶρον', :vp).should == 'δῶρα' }
  end

  describe "second-declension nouns (nueter final-accent)" do
    specify { subject.inflect('ἱερόν', :ns).should == 'ἱερόν' }
    specify { subject.inflect('ἱερόν', :gs).should == 'ἱεροῦ' }
    specify { subject.inflect('ἱερόν', :ds).should == 'ἱερῷ' }
    specify { subject.inflect('ἱερόν', :as).should == 'ἱερόν' }
    specify { subject.inflect('ἱερόν', :vs).should == 'ἱερόν' }
    specify { subject.inflect('ἱερόν', :np).should == 'ἱερά' }
    specify { subject.inflect('ἱερόν', :gp).should == 'ἱερῶν' }
    specify { subject.inflect('ἱερόν', :dp).should == 'ἱεροῖς' }
    specify { subject.inflect('ἱερόν', :ap).should == 'ἱερά' }
    specify { subject.inflect('ἱερόν', :vp).should == 'ἱερά' }
  end

=begin
  LETTERS = "αβγδεζηθικλμνξοπρςστυφχψω"
  ALPHA   = "αὰάᾶἀἂἄἆἁἃἅἇᾳᾲᾴᾷ"
  EPSILON = "εὲέ ἐἒἔ ἑἓἕ     "
  ETA     = "ηὴήῆἠἢἤἦἡἣἥἧῃῂῄῇ"
  IOTA    = "ιὶίῖἰἲἴἶἱἳἵἷ    "
  OMICRON = "οὸό ὀὂὄ ὁὃὅ     "
  RHO     = "ρ   ῤ   ῥ       "
  UPSILON = "υὺύῦὐὒὔὖὑὓὕὗ    "
  OMEGA   = "ωὼώῶὠὢὤὦὡὣὥὧῳῲῴῷ"
  end
=end

end
