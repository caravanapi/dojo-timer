require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe DojosController do
  
  def mock_dojo(stubs = {})
    @mock_dojo ||= mock_model(Dojo, stubs)
  end
  
  describe "GET index" do
    it "assigns all dojos as @dojos" do
      Dojo.should_receive(:all).and_return([mock_dojo])
      get :index
      assigns[:dojos].should == [mock_dojo]
    end
    
    it "should render index template" do
      Dojo.stub!(:all).and_return([mock_dojo])
      get :index
      response.should render_template(:index)
    end
  end
  
  describe "GET new" do
    it "should render new template" do
      get :new
      response.should render_template(:new)
    end
    
    it "assigns dojo as @dojo" do
      Dojo.should_receive(:new).and_return(mock_dojo)
      get :new
      assigns[:dojo].should == mock_dojo
    end
  end
  
  describe "POST create" do
    describe "with success" do
      it "should redirect to show" do
        Dojo.should_receive(:new).with('name' => "Oxente Rails").and_return(mock_dojo(:save => true))
        post :create, :dojo => {'name' => "Oxente Rails"}
        response.should redirect_to(dojo_url(mock_dojo))
      end
    end
    
    describe "without success" do
      it "should render new template" do
        Dojo.stub!(:new).and_return(mock_dojo(:save => false))
        post :create, :dojo => { 'name' => 'Oxente Rails'}
        response.should render_template(:new)
      end
    end
  end
  
  describe "GET show" do
    it "should render show template" do
      Dojo.should_receive(:find).with('1').and_return(mock_dojo)
      get :show, :id => "1"
      response.should render_template(:show)
    end
    
    it "assigns dojo as @dojo" do
      Dojo.should_receive(:find).with("1").and_return(mock_dojo)
      get :show, :id => "1"
      assigns[:dojo].should == mock_dojo
    end
  end
end