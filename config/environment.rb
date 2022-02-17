require 'rubygems'
require 'bundler/setup'

Bundler.require :default

OTR::ActiveRecord.configure_from_file! "./config/database.yml"
OTR::ActiveRecord.establish_connection!

ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'human', 'humans'
end