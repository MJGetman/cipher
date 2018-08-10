require './config/environment'
require './app/models/sample_model'
require './app/models/v_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/about' do
    return erb :about
  end 
  
  get '/' do
    return erb :index
  end
  
  post '/encrypt' do 
    e = params[:userWord2]
    f = params[:userWordShift]
    @a3 = letter_to_encrypt(e,f)
    erb :v_results
  end
  
  post '/end' do
    a = params[:userWord]
    d = params[:userShift]
    d = d.to_i
    @a2 = caesar_cipher(a,d)
    erb :results
  end
end
