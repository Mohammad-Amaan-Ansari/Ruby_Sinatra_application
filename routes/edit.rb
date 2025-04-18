require 'sinatra'
require_relative '../lib/submission'

get '/submissions/:id/edit' do
  @submission = Submission.find(params[:id])
  erb :edit
end

# Handle the update form submission

put '/submissions/:id' do
  @submission = Submission.find_by(id: params[:id])
  if @submission
    permitted_params = permit_params(params, :name, :age, :email, :contact)
    if @submission.update(permitted_params)
      redirect '/submissions'
    else
      @errors = @submission.errors.full_messages
      erb :edit
    end
  else
    status 404
    "Submission not found"
  end
end