class AddFieldToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_experience, :boolean
    add_column :users, :experience_summary, :text
  end
end
