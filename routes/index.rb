require 'sinatra'
require_relative '../lib/submission' 

get '/submissions' do
  @submissions = Submission.all
  erb :index
end
