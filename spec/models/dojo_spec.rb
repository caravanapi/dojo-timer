require 'spec_helper'

describe Dojo do
  subject do
    Dojo.new(:name => "Oxente Rails")
  end

  it "should be valid with valid attributes" do
    subject.should be_valid
  end
  
  it "should not be valid without name" do
    subject.name = nil
    subject.should_not be_valid
  end
end
