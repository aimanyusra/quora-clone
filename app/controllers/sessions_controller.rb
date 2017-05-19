
#create - create for sessions
post '/login' do
    user = User.find_by(user_name: params[:user_name])
    psw = params[:password]
    # flash = {}
    
    if user.authenticate(params[:password])
        
        # @flash= params[:username]
        # flash[:notice]        
        session[:user_id] = user.id
        redirect "/homepage"
    else
        redirect '/'
    end
end

get '/profile/:id' do
    @user =  User.find(params[:id])
    erb :"users/profile"
end

#delete for session
get '/logout' do
	session[:user_id] = nil
	redirect '/'
end

