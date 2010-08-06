class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end
  
  def show
    @dojo = Dojo.find(params[:id])
  end
  
  def create
    @dojo = Dojo.new(params[:dojo])

    if @dojo.save
      redirect_to @dojo
    else
      render :action => :new
    end
  end
end