require 'spec_helper'

describe UsersController do
  
  def mock_dojo(stubs={})
    @mock_dojo ||= mock_model(Dojo, stubs)
  end
  
  def mock_user(stubs={})
    @mock_user ||= mock_model(User, stubs)
  end

  describe "GET new" do
    it "should render new template" do
      Dojo.should_receive(:find).with("1").and_return(mock_dojo)
      User.should_receive(:new).and_return(mock_user)
      get :new, :dojo_id => "1"
      response.should render_template(:new)
    end
    
    it "should assign dojo and user" do
      Dojo.should_receive(:find).with("1").and_return(mock_dojo)
      User.should_receive(:new).and_return(mock_user)
      get :new, :dojo_id => "1"
      assigns[:dojo].should == mock_dojo
      assigns[:user].should == mock_user
    end
  end
  
  describe "POST create" do    
    describe "with valids attributes" do
      it "should redirect to dojo" do
        Dojo.stub!(:find).and_return(mock_dojo({:split => []}))
        User.should_receive(:new).and_return(mock_user(:save => true))
        post :create, :dojo_id => '1', :user => { :twitter => "twitter"}
        response.should redirect_to(mock_dojo)
      end

      # it "should assign dojo as @dojo" do
      #   Dojo.should_receive(:find).with("1").and_return(mock_dojo)
      #   User.should_receive(:new).and_return(mock_user(:save => true))
      #   post :create, :dojo_id => '1', :user => {:twitter => "twitter"}
      #   assigns[:dojo].should == mock_dojo
      # end
      # 
      # it "should expose newly user as @user" do
      #   Dojo.stub!(:find).and_return(mock_dojo)
      #   User.should_receive(:new).and_return(mock_user(:save => true))
      #   post :create, :dojo_id => '1', :user => {:twitter => "twitter"}
      #   assigns[:user] == mock_user
      # end
    end
  end
end