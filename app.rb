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
    @string = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@string.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
        "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "subtract"
        "#{@number1.to_i - @number2.to_i}"
    elsif @operation == "multiply"
        "#{@number1.to_i * @number2.to_i}"
    elsif @operation == "divide"
        "#{@number1.to_i / @number2.to_i}"
    end
  end

end
