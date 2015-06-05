class BuildingsController < ApplicationController

  # GET /buildings
  def index
    # all the buildings
    @buildings = Building.all
    render json: @buildings
  end

  def find_by_name
    @buildings = Building.find_by(name: params[:name])
    render json: @buildings
  end

  # GET /buildings/:id
  def show
    # find one Building by id
    @building = Building.find(params[:id])
    render json: @building
  end

  # POST /buildings
  def create
    @building = Building.new(building_params)
    if @building.save
      render json: @buildings, status: :created, location: buildings_url
    else
      render json: @buildings.errors, status: :unprocessable_entity
     end
  end

  # PATCH /buildings/:id
  def update
    @building = Building.find(params[:id])
    if @building.update(building_params)
      head :no_content
    else
      render json: @building.errors, status: :unprocessable_entity
    end
  end

  # DELETE /building/:id
  def destroy
    @building = Building.find(params[:id])
    @building.destroy

    head :no_content
  end

  private
   def building_params
    params.require(:building)
      .permit(:name, :rating, :desc, :length)
  end
end
