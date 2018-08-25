class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.string :followed_id
      t.string :follower_id
      t.timestamps
    end
    add_index :relationships,:followed_id
    add_index :relationships,:follower_id
  end
end
