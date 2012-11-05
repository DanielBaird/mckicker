
class Config

    def method_missing name
        {
            :servers_directory => '/user/daniel/minecraft/servers'
        }[name]
    end

end