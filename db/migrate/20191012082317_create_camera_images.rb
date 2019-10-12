class CreateCameraImages < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_images do |t|
      t.text :camera_image
      t.references :camera, null: false, foreign_key: true

      t.timestamps
    end
  end
end
