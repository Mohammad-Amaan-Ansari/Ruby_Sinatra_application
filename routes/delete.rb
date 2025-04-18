require 'sinatra'
require_relative '../lib/submission' 

delete '/submissions/:id' do
  submission = Submission.find_by(id: params[:id])
  if submission
    submission.destroy
    redirect '/submissions'
  else
    status 404
    "Submission not found"
  end
end
