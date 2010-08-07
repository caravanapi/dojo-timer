require 'spec_helper'

describe Dojo do
  let(:user) do
    User.new(:twitter => 'caironoleto')
  end

  subject do
    Dojo.new(:name => "Oxente Rails", :users => [user])
  end

  it "should be valid with valid attributes" do
    subject.should be_valid
  end

  it "should not be valid without name" do
    subject.name = nil
    subject.should_not be_valid
  end

  it "should has many users" do
    subject.users.should == [user]
  end

  it 'should receive same users by twitter' do
    Twitter.should_receive(:user).with('caironoleto')
    Twitter.should_receive(:user).with('dmitrynix')
    subject.user_twitters = 'caironoleto, dmitrynix'
    subject.should have_at_least(2).users
  end
end
