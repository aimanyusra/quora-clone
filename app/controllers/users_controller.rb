#create -new for users
get '/register' do
	erb :'users/register'
end

#create -create for users
post '/create' do
	User.create(user_name: params[:user_name], password: params[:password])
	redirect '/'
end

post '/user_input' do
	question = Question.new(user_input: params[:user_input], user_id: session[:user_id])
	if question.save
		question.to_json
	else
		{notSaved: true}.to_json
	end
end