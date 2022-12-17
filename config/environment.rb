ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
# require 'faker'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'
