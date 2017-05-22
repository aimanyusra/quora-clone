class CreateVotes < ActiveRecord::Migration[5.0]
	def change
		create_table :votes do |t|

		t.references :question
		t.references :user

		t.timestamps 
	end
	end
end
