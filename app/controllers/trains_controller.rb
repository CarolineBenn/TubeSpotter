class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(params[:id])
  end

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

end
