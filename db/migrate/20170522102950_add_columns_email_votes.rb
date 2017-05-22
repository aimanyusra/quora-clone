class AddColumnsEmailVotes < ActiveRecord::Migration[5.0]
	def change
		add_column :users, :email, :string
		add_column :questions, :votes, :string
	end
end
