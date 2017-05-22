class CreateAnswers < ActiveRecord::Migration[5.0]
	def change
			create_table :answers do |t|
			t.string :user_input
			t.references :questions
			t.references :users

			t.timestamps 
		end
	end
end
