# coding: utf-8
require 'spec_helper'

describe NounInflector do

  describe "first-declension (alpha-impure early-accent)" do
    specify { subject.inflect('γλῶσσα', :ns).should == 'γλῶσσα' }
    specify { subject.inflect('γλῶσσα', :gs).should == 'γλώσσης' }
    specify { subject.inflect('γλῶσσα', :ds).should == 'γλώσσῃ' }
    specify { subject.inflect('γλῶσσα', :as).should == 'γλῶσσαν' }
    specify { subject.inflect('γλῶσσα', :vs).should == 'γλῶσσα' }
    specify { subject.inflect('γλῶσσα', :np).should == 'γλῶσσαι' }
    specify { subject.inflect('γλῶσσα', :gp).should == 'γλωσσῶν' }
    specify { subject.inflect('γλῶσσα', :dp).should == 'γλώσσαις' }
    specify { subject.inflect('γλῶσσα', :ap).should == 'γλῶσσας' }
    specify { subject.inflect('γλῶσσα', :vp).should == 'γλῶσσαι' }
  end

  describe "first-declension (alpha-pure early-accent)" do
    specify { subject.inflect('ἀλήθεια', :ns).should == 'ἀλήθεια' }
    specify { subject.inflect('ἀλήθεια', :gs).should == 'ἀληθείας' }
    specify { subject.inflect('ἀλήθεια', :ds).should == 'ἀληθείᾳ' }
    specify { subject.inflect('ἀλήθεια', :as).should == 'ἀλήθειαν' }
    specify { subject.inflect('ἀλήθεια', :vs).should == 'ἀλήθεια' }
    specify { subject.inflect('ἀλήθεια', :np).should == 'ἀλήθειαι' }
    specify { subject.inflect('ἀλήθεια', :gp).should == 'ἀληθειῶν' }
    specify { subject.inflect('ἀλήθεια', :dp).should == 'ἀληθείαις' }
    specify { subject.inflect('ἀλήθεια', :ap).should == 'ἀληθείας' }
    specify { subject.inflect('ἀλήθεια', :vp).should == 'ἀλήθειαι' }
  end

  describe "first-declension (alpha-pure final-accent)" do
    specify { subject.inflect('δωρεά', :ns).should == 'δωρεά' }
    specify { subject.inflect('δωρεά', :gs).should == 'δωρεᾶς' }
    specify { subject.inflect('δωρεά', :ds).should == 'δωρεᾷ' }
    specify { subject.inflect('δωρεά', :as).should == 'δωρεάν' }
    specify { subject.inflect('δωρεά', :vs).should == 'δωρεά' }
    specify { subject.inflect('δωρεά', :np).should == 'δωρεαί' }
    specify { subject.inflect('δωρεά', :gp).should == 'δωρεῶν' }
    specify { subject.inflect('δωρεά', :dp).should == 'δωρεαῖς' }
    specify { subject.inflect('δωρεά', :ap).should == 'δωρεάς' }
    specify { subject.inflect('δωρεά', :vp).should == 'δωρεαί' }
  end

  describe "first-declension (eta-pure early-accent)" do
    specify { subject.inflect('ἀγάπη', :ns).should == 'ἀγάπη' }
    specify { subject.inflect('ἀγάπη', :gs).should == 'ἀγάπης' }
    specify { subject.inflect('ἀγάπη', :ds).should == 'ἀγάπῃ' }
    specify { subject.inflect('ἀγάπη', :as).should == 'ἀγάπην' }
    specify { subject.inflect('ἀγάπη', :vs).should == 'ἀγάπη' }
    specify { subject.inflect('ἀγάπη', :np).should == 'ἀγᾶπαι' }
    specify { subject.inflect('ἀγάπη', :gp).should == 'ἀγαπῶν' }
    specify { subject.inflect('ἀγάπη', :dp).should == 'ἀγάπαις' }
    specify { subject.inflect('ἀγάπη', :ap).should == 'ἀγάπας' }
    specify { subject.inflect('ἀγάπη', :vp).should == 'ἀγάπαι' }
  end

  describe "first-declension (eta-pure final-accent)" do
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

  describe "first-declension (alpha masculine)" do
    specify { subject.inflect('νεανίας', :ns).should == 'νεανίας' }
    specify { subject.inflect('νεανίας', :gs).should == 'νεανίου' }
    specify { subject.inflect('νεανίας', :ds).should == 'νεανίᾳ' }
    specify { subject.inflect('νεανίας', :as).should == 'νεανίαν' }
    specify { subject.inflect('νεανίας', :vs).should == 'νεανία' }
    specify { subject.inflect('νεανίας', :np).should == 'νεανίαι' }
    specify { subject.inflect('νεανίας', :gp).should == 'νεανιῶν' }
    specify { subject.inflect('νεανίας', :dp).should == 'νεανίαις' }
    specify { subject.inflect('νεανίας', :ap).should == 'νεανίας' }
    specify { subject.inflect('νεανίας', :vp).should == 'νεανίαι' }
  end

  describe "first-declension (eta masculine)" do
    specify { subject.inflect('κλέπτης', :ns).should == 'κλέπτης' }
    specify { subject.inflect('κλέπτης', :gs).should == 'κλέπτου' }
    specify { subject.inflect('κλέπτης', :ds).should == 'κλέπτῃ' }
    specify { subject.inflect('κλέπτης', :as).should == 'κλέπτην' }
    specify { subject.inflect('κλέπτης', :vs).should == 'κλέπτα' }
    specify { subject.inflect('κλέπτης', :np).should == 'κλέπται' }
    specify { subject.inflect('κλέπτης', :gp).should == 'κλεπτῶν' }
    specify { subject.inflect('κλέπτης', :dp).should == 'κλέπταις' }
    specify { subject.inflect('κλέπτης', :ap).should == 'κλέπτας' }
    specify { subject.inflect('κλέπτης', :vp).should == 'κλέπται' }
  end

  describe "second-declension (masculine/feminine early-accent)" do
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

  describe "second-declension (masculine/feminine final-accent)" do
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

  describe "second-declension (masculine/feminine penult-circumflex)" do
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

  describe "second-declension (nueter early-accent)" do
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

  describe "second-declension (nueter final-accent)" do
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

end

