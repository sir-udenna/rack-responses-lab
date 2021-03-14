require 'rack'

class Application
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]  
    end

    def pretty_response
        (Time.now.hour < 12) ?  ["<strong>good morning</strong>"] : ["<strong>good afternoon</strong>"]
      end
end