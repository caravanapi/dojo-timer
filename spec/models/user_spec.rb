require 'spec_helper'

describe User do
  subject do
    User.new(:twitter => "caironoleto")
  end
  it { should be_valid }

  it "should not be valid without twitter" do
    subject.twitter = nil
    subject.should_not be_valid
  end

  it "should have a unique twitter" do
    subject.save
    user = User.new(:twitter => "caironoleto")
    user.should_not be_valid
  end
end