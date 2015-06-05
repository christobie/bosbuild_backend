class PicturesController < ApplicationController

  # show all of the pictures everywhere
  def all
    render json: Picture.all
  end

  # buildings/:id/pictures ACTION: get search for all of the pictures in a building
  def index
    render json: Picture.all
  end

  def show
    render json: Picture.find(params[:id])
  end

  # buildings/:id/pictures ACTION: create create a picture that belongs to a building
  def create
    @building = Building.find(params[:building_id])
    @picture = Picture.new(picture_params)
    @picture.building =  @building
    @picture.user current_user
    if @picture.save
      render json: @picture, status: :created
    else
      render json: @picture.errors, status: :unprocessable_entity
    end
  end

  private

  def picture params
    params.require(:picture).permit(:caption, :date_taken, :image)
  end

end
