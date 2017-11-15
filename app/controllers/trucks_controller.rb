class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
    render :index
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
  end

  def create
  end
end
