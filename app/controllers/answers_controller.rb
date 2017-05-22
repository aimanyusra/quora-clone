require 'byebug'

post '/answers' do
	answer = Answer.new(user_input: params[:user_input], user_id: session[:user_id], question_id: params[:question_id])
	if answer.save
		answer.to_json
	else
		{notSaved: true}.to_json
	end

	redirect back
end