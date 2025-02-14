class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :caption
      t.text :description
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
