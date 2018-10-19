require 'sinatra'
require File.dirname(__FILE__)+'/lib/caesar_cipher'

get '/' do
  erb :home
end

post '/encrypt' do
  @message = params[:message]
  @encrypted = CaesarCipher.encrypt(@message)
  erb :encrypted
end

post '/decrypt' do
  @message = params[:message]
  @decrypted = CaesarCipher.decrypt(@message)
  erb :decrypted
end
