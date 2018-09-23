class AddColumnsUserAnswerToPosts < ActiveRecord::Migration[5.1]
  def change
	  add_column :posts,:user_answer,:integer
  end
end
