
require_relative '../../src/easymc/easymc'

# -------------------------------------------------------------------
describe 'create_new_server method' do

	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	it "should fail if templates root isn't specified" do
		options = { :servers => File.join('..', 'testbed', 'servers') }

		expect {
			EasyMC.create_new_server('test-server', 'test-template', options)
		}.to raise_error ArgumentError
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