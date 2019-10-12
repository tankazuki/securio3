class CreateCameraCodecs < ActiveRecord::Migration[6.0]
  def change
    create_table :camera_codecs do |t|
      t.references :camera, null: false, foreign_key: true
      t.references :codec, null: false, foreign_key: true

      t.timestamps
    end
  end
end
