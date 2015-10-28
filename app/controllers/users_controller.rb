class UsersController < ApplicationController
  before_action :init_user, only: [:show, :edit, :update, :destroy]
  
  def index
     @users = User.paginate page: params[:page], per_page: 10
  end
  
  private
  def init_user
    @user = User.find params[:id]
  end
end
