class CreateQuestions < ActiveRecord::Migration[5.0]
	def change
		create_table :questions do |t|
			t.string :user_input
			t.belongs_to :user, index: true #column name = user_id

			t.timestamps
		end
	end
end
