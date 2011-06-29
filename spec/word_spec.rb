# coding: utf-8
require 'spec_helper'

describe Word do

  subject { @word = Word.new('γλῶσσαι', @lexeme = stub, :np) }
  its(:form) { should == 'γλῶσσαι' }
  its(:lexeme) { should == @lexeme }
  its(:inflection) { should == :np }

end
