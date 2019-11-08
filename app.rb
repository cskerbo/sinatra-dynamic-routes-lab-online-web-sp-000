require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name'
    @name = param[:name]
    "#{@name}.reverse"

end
