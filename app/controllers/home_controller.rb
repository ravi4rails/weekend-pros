class HomeController < ApplicationController
  def index
  end

  def auto_complete
    @skills = Skill.pluck(:name)
    respond_to do |format| 
      format.json { render json: @skills }
    end
  end
end
