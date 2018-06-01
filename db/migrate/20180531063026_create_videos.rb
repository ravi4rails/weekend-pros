class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :channel_id
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
