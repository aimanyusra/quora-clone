class DropAnswers < ActiveRecord::Migration[5.0]
	def change
		drop_table :answers

		create_table :answers do |t|
		t.string :user_input
		t.references :question
		t.references :user

		t.timestamps 
		end
	end
end
