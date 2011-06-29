# coding: utf-8
require 'spec_helper'

describe Lexeme do

  subject { @lexeme = Lexeme.new('ἐκ', :prep, [:ς]) }
  its(:lemma) { should == 'ἐκ' }
  its(:pos) { should == :prep }
  its(:attributes) { should == [:ς] }

end
