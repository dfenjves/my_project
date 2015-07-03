require 'bundler'
Bundler.require
require_relative 'models/caesar-cipher.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    "THIS IS MY HOME PAGE"
  end
  
  get '/encode' do
    erb :encoder
  end
  
  post '/encode' do
    my_string = params[:string]
    my_offset = params[:offset].to_i
    @encoded_string = caesar_encode(my_string, my_offset)
    erb :encoded
  end
  
  get '/about_me' do
    erb :about_me
  end
  
  
  

end
