require 'sinatra'
require 'slim'

# TODO: Optimizely?

get '/' do
  local_vars = {
    show_phone_number: !!params[:ring],
    serious_print: !!params[:srs],
    phone_number: ENV['KEVINS_PHONE_NUMBER']
  }

  slim :resume, locals: local_vars
end
