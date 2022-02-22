require 'rubygems'
require 'bundler/setup'

env = ENV['RACK_ENV'].to_sym || :development

Bundler.require(:default, env)

OTR::ActiveRecord.configure_from_url! ENV['DATABASE_URL']
OTR::ActiveRecord.establish_connection!

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'human', 'humans'
end