require 'sinatra'
require File.dirname(__FILE__)+'/lib/caesar_cipher'

get '/' do
  redirect '/encrypt'
end

get '/encrypt' do
  erb :encrypt
end

post '/encrypted' do
  @message = params[:message]
  @encrypted = CaesarCipher.encrypt(@message)
  erb :encrypted
end

get '/decrypt' do
  erb :decrypt
end

post '/decrypted' do
  @encrypted_message = params[:encrypted_message]
  @decrypted = CaesarCipher.decrypt(@encrypted_message)
  erb :decrypted
end
