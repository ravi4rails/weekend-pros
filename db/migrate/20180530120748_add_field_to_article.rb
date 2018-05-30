class AddFieldToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :cover_image, :string
  end
end
