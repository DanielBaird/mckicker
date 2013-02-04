
require_relative '../../lib/file_handling'

# -------------------------------------------------------------------
describe 'safe_name' do
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	it "should let okay names pass through" do

		okay_names = ['okay', 'has-dash', 'has-sev-er-al-dashes']
		okay_names.each do |name|
			MCFS.safe_name(name).should == name
		end
	end
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	it "should lowercase names" do

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
	it "should change whitespace into dashes" do

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