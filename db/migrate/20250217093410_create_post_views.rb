class CreatePostViews < ActiveRecord::Migration[8.0]
  def change
    create_table :post_views do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
