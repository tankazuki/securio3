class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :mail
      t.string :password_digest
      t.string :user_image
      t.boolean :enable

      t.timestamps
    end
  end
end
