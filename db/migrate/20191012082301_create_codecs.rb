class CreateCodecs < ActiveRecord::Migration[6.0]
  def change
    create_table :codecs do |t|
      t.string :codec

      t.timestamps
    end
  end
end
