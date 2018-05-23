class HomeController < ApplicationController
  def index
  end

  def auto_complete
    @skills = User.all.map {|a| a.skill_list}.flatten.compact.uniq
    respond_to do |format| 
      format.json { render json: @skills.map {|key| key.capitalize} }
    end
  end

  def pro_listing
    if params[:skill].present?
      if params[:skill] == "Teaching"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Web Development"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Web Designing"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Sports Coaching"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Swimming Coaching"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Cooking"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Digital Marketing"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Email Marketing"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Search Engine Optimization"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Human Resource"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      elsif params[:skill] == "Real Estate Planning"
        @users = User.where(primary_skill: params[:skill]).page params[:page]
      end
    else 
      @users = User.all.page params[:page]
    end
  end

end
