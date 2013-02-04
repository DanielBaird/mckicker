
require_relative '../../lib/mc_server_genesis'

# -------------------------------------------------------------------
describe 'create_new_server method' do

	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	it "should fail if templates root isn't specified" do
		ServerGenesis.create_new_server('test-server', 'test-template', {
			:servers => File.join('..', 'testbed', 'servers')
		}).should_raise ArgumentError
	end
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	xit "should lowercase names" do

		correct_examples = {
			'Initialcap'  => 'initialcap',
			'middleCap'   => 'middlecap',
			'SeVeRALCapS' => 'severalcaps',
		}

		correct_examples.each do |original, cleaned|
			MCFS.safe_name(original).should == cleaned
		end
	end
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	xit "should change whitespace into dashes" do

		correct_examples = {
			'one space'      => 'one-space',
			'double  space'  => 'double-space',
			'two spa ces'    => 'two-spa-ces',
			'mixed  spa ces' => 'mixed-spa-ces',
		}

		correct_examples.each do |original, cleaned|
			MCFS.safe_name(original).should == cleaned
		end
	end
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

end