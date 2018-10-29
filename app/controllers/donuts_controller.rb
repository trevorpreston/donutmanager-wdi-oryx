class DonutsController < ApplicationController
  def index
    @donuts = Donut.all
  end

  def show
    
    @donut = Donut.find(params[:id])
    # add the method here that gets 
    # the id from params
    # use ActiveRecord to get the data for one
    # donut with that id.  Save that donut
    # to an instance variable
    
  end

  def edit
  end

  def new
    @donut = Donut.new
  end

  def create
    donut_params = params.require(:donut).permit(:name, :size, :frosting_type)
    @donut = Donut.create(donut_params)
    redirect_to @donut
  end


end
