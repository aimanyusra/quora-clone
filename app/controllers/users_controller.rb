#create -new for users
get '/register' do
	erb :'users/register'
end

#create -create for users
post '/create' do
	User.create(user_name: params[:user_name], password: params[:password], email: params[:email])
	redirect '/'
end

