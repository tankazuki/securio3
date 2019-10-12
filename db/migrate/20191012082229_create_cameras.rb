class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.string :camera_name
      t.integer :resolution
      t.integer :camera_type
      t.integer :audio
      t.string :size
      t.integer :weight
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
