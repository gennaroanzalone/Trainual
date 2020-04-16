class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @user = User.new
    @users = User.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
      respond_to do |format|
        format.html
        format.js
    end
  end

  # GET /users/new
  def new
    @user = User.new
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
      respond_to do |format|
        format.html
        format.js
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User successfully created."
      redirect_to users_path
    else
      flash[:warning] = "Something went wrong."
      render :new 
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      flash[:success] = "User successfully updated."
      redirect_to users_path
    else
      render :edit 
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :title, :phone, :status)
    end
end