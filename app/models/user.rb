class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates :user_name, presence:true, uniqueness:true
	validates :password, presence:true
	validates :email, presence:true, uniqueness:true 
	validates_format_of :user_name, :with => /[a-z]{6,12}/
	validates_format_of :password, :with => /[\S]{8,12}/
	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

	has_secure_password
end
