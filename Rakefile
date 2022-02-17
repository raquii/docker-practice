require 'bundler/setup'

require 'active_record_migrations'

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

ActiveRecordMigrations.configure do |c|
    c.yaml_config = 'config/database.yml'
end

ActiveRecordMigrations.load_tasks
  
  

