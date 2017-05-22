require 'byebug'

get '/questions' do
	@questions = Question.all


end

post '/questions' do
	
	username = User.find(session[:user_id]).user_name

	question = Question.new(user_input: params[:user_input], user_id: session[:user_id], votes: 0, user_name: username)
	if question.save
		question.to_json
	else
		{notSaved: true}.to_json
	end

	redirect '/'
end

get '/questions/:id' do

  @question = Question.find(params[:id])
  
  erb :'static/show'
end

patch '/questions/:id/edit' do
	@question = Question.find(params[:id])
  	@question.user_input = params[:edit_input]
  	@question.save
  	redirect to "/"

end

delete '/questions/:id/delete' do #delete action
  @question = Question.find(params[:id])
  @question.delete
  redirect to '/'
end