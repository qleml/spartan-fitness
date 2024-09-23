class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def select
    @users = User.all
  end

  def set_user
    puts "Selected user ID: #{params[:user_id]}"
    session[:user_id] = params[:user_id]
    redirect_to pages_home_path
  end

  def show
    @user = User.find(params[:id])
  end
end
