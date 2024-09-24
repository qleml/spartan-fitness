class UsersController < ApplicationController
  skip_before_action :ensure_user_selected, only: [ :select, :set_user ]
  def index
    @users = User.all
  end
  def select
    @users = User.all
  end

  def set_user
    session[:user_id] = params[:user_id]
    redirect_to pages_home_path
  end

  def show
    @user = User.find(params[:id])
  end
end
