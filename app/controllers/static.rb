get '/' do
  if logged_in?
     erb :"static/home"
  else
     erb :"static/index"
  end
end

get '/home' do
	erb :"static/home"
end



