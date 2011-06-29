# coding: utf-8
require 'spec_helper'

describe Lexicon do

  before do
    @lexicon = Lexicon.new(File.join(File.dirname(__FILE__), 'assets', 'sample_lexicon.hmr'))
  end

  it "has lexemes" do
    l = @lexicon[:G1537]
    l.lemma.should == 'ἐκ'
    l.pos.should == :prep
    l.attributes.should == [:ς]
    l = @lexicon[:G1722]
    l.lemma.should == 'ἐν'
    l.pos.should == :prep
    l.attributes.should == []
  end

end
