require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

# namespace :db do
#   desc 'migrate changes to your database'
#   task :migrate => :environment do
#     Character.create_table
#   end
#
#   task :environment do
#     require_relative './config/environment'
#   end
#
#   desc 'seed the database with data from API'
#   task :seed do
#     require_relative './db/seeds.rb'
#   end
# end
