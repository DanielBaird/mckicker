require 'sinatra'

require 'config.rb'

get '/' do

	"name is #{config.name}"
end

