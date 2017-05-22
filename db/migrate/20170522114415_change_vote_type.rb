class ChangeVoteType < ActiveRecord::Migration[5.0]
	def change
		remove_column :questions, :votes
		add_column :questions, :votes, :integer
	end
end
