# coding: utf-8
require 'spec_helper'

describe ArticleInflector do

  describe "masculine" do
    specify { subject.inflect('ὁ', :nsm).should == 'ὁ' }
    specify { subject.inflect('ὁ', :gsm).should == 'τοῦ' }
    specify { subject.inflect('ὁ', :dsm).should == 'τῷ' }
    specify { subject.inflect('ὁ', :asm).should == 'τόν' }
    specify { subject.inflect('ὁ', :npm).should == 'οἱ' }
    specify { subject.inflect('ὁ', :gpm).should == 'τῶν' }
    specify { subject.inflect('ὁ', :dpm).should == 'τοῖς' }
    specify { subject.inflect('ὁ', :apm).should == 'τούς' }
  end

  describe "feminine" do
    specify { subject.inflect('ὁ', :nsf).should == 'ἡ' }
    specify { subject.inflect('ὁ', :gsf).should == 'τῆς' }
    specify { subject.inflect('ὁ', :dsf).should == 'τῇ' }
    specify { subject.inflect('ὁ', :asf).should == 'τήν' }
    specify { subject.inflect('ὁ', :npf).should == 'αἱ' }
    specify { subject.inflect('ὁ', :gpf).should == 'τῶν' }
    specify { subject.inflect('ὁ', :dpf).should == 'ταῖς' }
    specify { subject.inflect('ὁ', :apf).should == 'τάς' }
  end

  describe "neuter" do
    specify { subject.inflect('ὁ', :nsn).should == 'τό' }
    specify { subject.inflect('ὁ', :gsn).should == 'τοῦ' }
    specify { subject.inflect('ὁ', :dsn).should == 'τῷ' }
    specify { subject.inflect('ὁ', :asn).should == 'τό' }
    specify { subject.inflect('ὁ', :npn).should == 'τά' }
    specify { subject.inflect('ὁ', :gpn).should == 'τῶν' }
    specify { subject.inflect('ὁ', :dpn).should == 'τοῖς' }
    specify { subject.inflect('ὁ', :apn).should == 'τά' }
  end

end

