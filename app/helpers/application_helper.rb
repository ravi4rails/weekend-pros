module ApplicationHelper

  def count_user_for_skill skill_name
    User.where(primary_skill: skill_name).count
  end

end
