
#
# create a minecraft server with the given name, from the given template.
#
module ServerGenesis

	def create_new_server(server_name, template_name, config)
		# create a server called server_name from the template template_name

		# config must include template and server parent paths
		template_root = config[:templates]
		server_root = config[:servers]
		raise ArgumentError, "config must include settings 'templates' and 'servers'" unless template_path && server_path 

		# does the named server already exist? it shouldn't.
		server_dir = File.join server_root, server_name
		raise ArgumentError, "server dir already exists at [#{server_dir}]" if MCFS.dir_exists? server_dir

		# does the template exist?  it should.
		template_dir = File.join template_root, template_name
		raise ArgumentError, "cannot find template at [#{template_dir}]" unless MCFS.dir_exists? template_dir

	end

end
