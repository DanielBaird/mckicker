
# a bunch of file handling methods

class MCFS

	def dir_exists? possible_dir
		File.directory? possible_dir
	end

	def safe_name fancy_name
		# return a super-safe filename by:
		#  - replacing runs of whitespace or underscores with a dash
		#  - removing everything else apart from letters, numbers, and dashes
		#  - replacing runs of dashes with single dashes
		#  - removing leading and trailing dashes
		fancy_name.downcase.gsub(/(\w|\n|\r|_)+/, '-').gsub(/[^a-z0-9-]+/, '').gsub(/^-/, '').gsub(/-$/, '')
	end
end