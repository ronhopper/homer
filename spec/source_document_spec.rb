# coding: utf-8
require 'spec_helper'

describe SourceDocument do

  before do
    @doc = SourceDocument.new(File.join(File.dirname(__FILE__), 'assets', 'sample_document.hmr'))
  end

  it "has words" do
    w = @doc.words[0]
    w.form.should == 'Ἐν'
    w.lexeme.lemma.should == 'ἐν'
    w.inflection.should be_nil
    w = @doc.words[31]
    w.form.should == 'ἐγένετο'
    w.inflection.should == :'2adi3s'
    w = @doc.words[-1]
    w.form.should == '.'
  end

  it "has keyed lines" do
    line = @doc.lines[:'1.1.3']
    line.map(&:form).join(' ').should == 'πάντα δι’ αὐτοῦ ἐγένετο , καὶ χωρὶς αὐτοῦ ἐγένετο οὐδὲ ἓν ὃ γέγονεν'
  end

end
