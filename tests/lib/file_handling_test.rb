
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
	it "should change whitespace into dashes" do

		whitespace_names = [
			['one space', 'one-space'],
			['double  space', 'double-space'],
			['two spa ces', 'two-spa-ces'],
			['mixed  spa ces', 'mixed-spa-ces'],
		]

		whitespace_names.each do |name|
			MCFS.safe_name(name[0]).should == name[1]
		end
	end
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

end