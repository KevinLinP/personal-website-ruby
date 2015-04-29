require 'sinatra'
require 'slim'

# TODO: rewrite Avvo section
# TODO: Optimizely?

get '/' do
  local_vars = {
    serious_print: !!params[:srs],
    phone_number: nil
  }
  local_vars[:phone_number] = ENV['KEVINS_PHONE_NUMBER'] if !!params[:beyonce] # put a ring on it.

  slim :resume, locals: local_vars
end
