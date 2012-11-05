
class Config

    def self.method_missing name
        {
            :servers_directory => '/user/daniel/minecraft/servers'
        }[name]
    end

end