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

end

