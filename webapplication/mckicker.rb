require 'sinatra'

$LOAD_PATH << '.'

require 'config.rb'

get '/' do

	"name is #{config.name}"
end

