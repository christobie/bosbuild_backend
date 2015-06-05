class UsersController < ApplicationController

  # GET /users
  def index
    # all the users
    @users = User.all
    render json: @users
  end

  # GET /users/:id
  def show
    # find one User by id
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @movie.save
      render json: @user, status: :created, location: users_url
    else
      render json: @users.errors, status: :unprocessable_entity
     end
  end

  # PATCH /users/:id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    head :no_content
  end

  private
   def user_params
    params.require(:user)
      .permit(:name, :rating, :desc, :length)
  end
end
