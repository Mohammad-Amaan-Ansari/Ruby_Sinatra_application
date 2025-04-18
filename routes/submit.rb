require 'sinatra'
require_relative '../lib/submission' 


post '/submit' do
  permitted_params = permit_params(params, :name, :age, :email, :contact)
  submission = Submission.new(permitted_params)

  if submission.save
    redirect '/submissions'
  else
    @errors = submission.errors.full_messages
    erb :form
  end
end