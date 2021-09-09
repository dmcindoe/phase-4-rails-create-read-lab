class PlantsController < ApplicationController

  def index
    plants = Plant.all
    render json: plants
    #GET for Array of all Plants
    #set variable = to Model Class.all then render json: variable
  end

  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end
  #GET for single plant information
  #set variable = Model Class.find_by(id: params[:id]) then render json: variable

  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
  #Post for new plant. fist set up create
  #set variable = Model Class.create(variable_params) 
  #then return render json: variable along with created status
  #then set private for Strong params
  #def variable_params
  #params.permit(Columns or infor to be shown/available to user)
    
end
