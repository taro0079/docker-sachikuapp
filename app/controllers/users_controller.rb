# frozen_string_literal: true

# User controller
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to users_url if @user.save
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age, :password, :password_confirmation)
  end
end
