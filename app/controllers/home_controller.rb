class HomeController < ApplicationController
  def index
  end

  def auto_complete
    # @skills = Skill.pluck(:name)
    # respond_to do |format| 
    #   format.json { render json: @skills }
    # end
    @skills = User.all.map {|a| a.skill_list}.flatten.compact.uniq
    respond_to do |format| 
      format.json { render json: @skills.map {|key| key.capitalize} }
    end
  end
end
