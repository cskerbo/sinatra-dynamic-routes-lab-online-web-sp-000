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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1], params[:word2]
    "#{@string}"
  end

end
