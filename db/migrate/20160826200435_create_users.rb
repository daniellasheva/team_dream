class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :gender
      t.date :date_of_birth
      t.string :password_digest
      t.string :favorite_animal

      t.timestamps
    end
  end
end
