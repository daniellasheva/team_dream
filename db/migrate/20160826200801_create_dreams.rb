class CreateDreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dreams do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :dream_type
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
