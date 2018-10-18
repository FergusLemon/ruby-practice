require 'sinatra'

get '/' do
  redirect '/encrypt'
end

get '/encrypt' do
  erb :encrypt
end

post '/encrypted' do
  params[:message]
end

get '/decrypt' do
  erb :decrypt
end

post '/decrypted' do
  params[:encrypted_message]
end
