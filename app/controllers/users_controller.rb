class UsersController < ApplicationController
  before_filter :set_dojo
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @dojo
    else
      render :action => :new
    end
  end
  
  private
    def set_dojo
      @dojo = Dojo.find(params[:dojo_id])
    end
end