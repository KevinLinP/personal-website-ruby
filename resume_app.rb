require 'sinatra'
require 'slim'

# TODO: rewrite Avvo section
# TODO: beyonce
# TODO: optimize print layout
# TODO: Google Analytics
# TODO: Optimizely?

get '/' do
  slim :resume, locals: {serious_print: !!params[:srs]}
end
