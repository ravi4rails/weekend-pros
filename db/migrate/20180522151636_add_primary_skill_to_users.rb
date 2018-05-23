class AddPrimarySkillToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :primary_skill, :string
  end
end
