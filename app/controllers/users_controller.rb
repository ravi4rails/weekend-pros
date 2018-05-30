class UsersController < ApplicationController
  
  def index
    if params[:skill][:param].present?
      @users = User.all.map {|u| u if u.skill_list.include? params[:skill]}.compact
    else 
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
