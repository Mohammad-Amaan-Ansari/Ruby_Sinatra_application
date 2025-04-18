require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv/load'
require_relative 'lib/submission'
require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "db/development.sqlite3"}

set :public_folder, 'css'
set :database_file, "config/database.yml"


get '/' do
  erb :form
end

require_relative 'routes/index'
require_relative 'routes/submit'
require_relative 'routes/edit'
require_relative 'routes/delete'

def permit_params(params, *allowed_keys)
  params.select { |key, _value| allowed_keys.include?(key.to_sym) }
end