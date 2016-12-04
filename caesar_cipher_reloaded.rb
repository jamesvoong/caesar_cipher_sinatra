require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/caesar_cipher.rb'

get '/' do
	erb :index
end

post '/' do
	@cipher = caesar_cipher(params['input_text'], params['shift_factor'].to_i)
	erb :index
end