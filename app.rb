require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    erb :reversename
  end

  get '/square/:number' do
    @num = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
      "#{params[:phrase] * params[:number].to_i}"
    end


get '/say/:word1/:word2/:word3/:word4/:word5' do
 "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

  get '/:operation/:number1/:number2' do
      @number1, @number2, @operation = params[:number1].to_i, params[:number2].to_i, params[:operation]
      case @operation
      when 'add'
        "#{@number1 + @number2}"
      when 'subtract'
        "#{@number1 - @number2}"
      when 'multiply'
      "#{@number1 * @number2}"
      when 'divide'
      "#{@number1 / @number2}"
      end
    end
end
