require 'sinatra'
require 'slim'

get '/' do
  redirect to('/resume'), 302
end

get '/resume' do
  local_vars = {
    show_phone_number: !!params[:ring], # put a ring on it!
    serious_print: !!params[:srs],
    phone_number: ENV['KEVINS_PHONE_NUMBER']
  }

  slim :resume, locals: local_vars
end
