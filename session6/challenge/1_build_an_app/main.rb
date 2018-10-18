require 'sinatra'

get '/' do
  redirect '/encrypt'
end

get '/encrypt' do
  erb :encrypt
end

post '/encrypted' do
  @message = params[:message]
  erb :encrypted
end

get '/decrypt' do
  erb :decrypt
end

post '/decrypted' do
  @encrypted_message = params[:encrypted_message]
  erb :decrypted
end
