require_relative 'config/environment'
require_relative 'models/model.rb' 

class App < Sinatra::Base

  get '/' do
    erb :gun_control_form
  end

  post '/' do
    @myresult = guncontrol_quiz_question1(params[:question1])
    @myresult = guncontrol_quiz_question2(params[:question2])
    @myresult = guncontrol_quiz_question3(params[:question3])
    erb :results
  end 
end 