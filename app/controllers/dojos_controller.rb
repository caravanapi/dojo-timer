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

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])

    if @dojo.update_attributes(params[:dojo])
      redirect_to @dojo
    else
      render :action => :edit
    end
  end
end
