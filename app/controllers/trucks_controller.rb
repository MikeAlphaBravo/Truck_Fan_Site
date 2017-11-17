class TrucksController < ApplicationController
  def index
    @trucks = Truck.index(params[:page])
    # @trucks = Truck.all.order("make ASC")
    @trucks = @trucks.only_makes(params[:make]) if params[:make].present?
    @trucks = @trucks.search(params[:search]) if params[:search].present?
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(truck_params)
      redirect_to trucks_path
    else
      render :edit
    end
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy
    redirect_to trucks_path
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(truck_params)
    if @truck.save
      redirect_to trucks_path
    else
      render :new
    end
  end

  def comments
    @comments = Comment.includes(:trucks).all
  end


  private
    def truck_params
      params.require(:truck).permit(:link, :make, :model, :year, :author)
    end
end
