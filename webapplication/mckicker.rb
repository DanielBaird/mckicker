require 'sinatra'

require './config'

get '/' do

	"name is #{config.name}"
end

