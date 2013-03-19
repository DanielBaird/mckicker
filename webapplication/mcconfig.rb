
class MCConfig

    def self.method_missing name, *args, &block
        puts "class method " + name
#
#        {
#            :name => 'MC Kicker',
#            :servers_directory => '/user/daniel/minecraft/servers'
#        }[name]
    end

    def method_missing name, *args, &block
        puts "instance method " + name

#        {
#            :name => 'MC Kicker',
#            :servers_directory => '/user/daniel/minecraft/servers'
#        }[name]
    end


end