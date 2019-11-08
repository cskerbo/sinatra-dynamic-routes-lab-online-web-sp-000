require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number.to_s}"
  end

  get '/say/:number/:phrase' do
    @num_times = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @num_times}"
  end

end
