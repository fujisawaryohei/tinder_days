class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :question
      t.string :select1
      t.string :select2
      t.string :select3
      t.string :select4
      t.integer :answer
      t.timestamps 
    end
  end
end
