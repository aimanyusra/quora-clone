class Question < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user

	validates :user_input, presence: true, length: {in: 10..160}
end
