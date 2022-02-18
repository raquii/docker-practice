require 'bundler/setup'
require_relative 'config/environment'
load "tasks/otr-activerecord.rake"

namespace :db do
  task :environment do
    require_relative "api"
  end
end

desc 'start console'
task :console do 
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

desc 'print routes of API'
task :routes do
    API::Root.routes.each do |route|
        method = route.request_method.ljust(10)
        path = route.path
        puts "#{method} #{path}"
    end
end
