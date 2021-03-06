class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @myself = current_user
  end

  def show
    @user = User.find(params[:id])
    @topics = @user.topics
  end
end
