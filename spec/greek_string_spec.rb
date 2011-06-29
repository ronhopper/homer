# coding: utf-8
require 'spec_helper'

describe GreekString do

  before do
    String.class_eval { include GreekString }
  end

  specify "#downcase_greek" do
    'ΘΕΣΌΣ'.downcase_greek.should == 'θεσός'
  end

  specify "#upcase_greek" do
    'θεσός'.upcase_greek.should == 'ΘΕΣΌΣ'
  end

  specify "#remove_greek_accent" do
    'ἄνθρωπος'.remove_greek_accent.should == 'ἀνθρωπος'
  end

  specify "#add_greek_oxytone" do
    'ἀδελφος'.add_greek_oxytone.should == 'ἀδελφός'
  end

  specify "#add_greek_paroxytone" do
    'δουλου'.add_greek_paroxytone.should == 'δούλου'
  end

  specify "#add_greek_proparoxytone" do
    'ἀνθρωπος'.add_greek_proparoxytone.should == 'ἄνθρωπος'
  end

  specify "#add_greek_perispomenon" do
    'κριτων'.add_greek_perispomenon.should == 'κριτῶν'
  end

  specify "#add_greek_properispomenon" do
    'δωρον'.add_greek_properispomenon.should == 'δῶρον'
  end

end
