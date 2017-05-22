class Answer < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :users
	belongs_to :questions

	validates :user_input, presence: true, length: {in: 10..160}
end
