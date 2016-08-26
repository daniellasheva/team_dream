class CreateJoinTableDreamElement < ActiveRecord::Migration[5.0]
  def change
    create_join_table :dreams, :elements do |t|
      # t.index [:dream_id, :element_id]
      # t.index [:element_id, :dream_id]
    end
  end
end
