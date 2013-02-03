require 'sinatra'

$LOAD_PATH << '.'

require 'config'

get '/' do
	"name is #{Config.name}"
end

