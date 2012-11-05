require 'sinatra'

$LOAD_PATH << '.'

require 'config.rb'

get '/' do

	"name is #{Config.name}"
end

