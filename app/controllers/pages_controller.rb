class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @users = User.all
  end

  def add_friend
    current_user.friend_request(User.find(params[:id]))
    redirect_to root_path, notice: "Friend added!" # change to AJAX
  end

  def accept_friend
    current_user.accept_request(User.find(params[:id]))
    redirect_to root_path, notice: "You're friends now!" # change to AJAX
  end

  def decline_friend
    current_user.decline_request(User.find(params[:id]))
    redirect_to root_path, notice: "Friend request declined." # change to AJAX
  end


  # private

  # def user
  #   User.find(params[:id])
  # end
end
