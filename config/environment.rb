require 'rubygems'
require 'bundler/setup'
env = (ENV['RACK_ENV'] || :development)

Bundler.require :default, env.to_sym

OTR::ActiveRecord.configure_from_file! "./config/database.yml"
OTR::ActiveRecord.establish_connection!

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'human', 'humans'
end