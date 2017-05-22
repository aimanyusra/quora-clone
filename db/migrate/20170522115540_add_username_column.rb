class AddUsernameColumn < ActiveRecord::Migration[5.0]
	def change
		add_column :questions, :user_name, :string
	end
end
