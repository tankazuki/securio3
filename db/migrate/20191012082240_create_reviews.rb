class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :review_text
      t.text :review_image
      t.integer :camera_id
      t.integer :user_id

      t.timestamps
    end
  end
end
