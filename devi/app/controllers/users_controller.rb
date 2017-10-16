class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:index, :new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(safe_user_params)
    if @user.save!
      alert "User successfully created."
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(safe_user_params)
      alert "User successfully updated."
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    alert "User successfully destroyed"
    redirect_to @users
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def safe_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
