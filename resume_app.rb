require 'sinatra'
require 'slim'

# TODO: rewrite Avvo section
# TODO: beyonce
# TODO: serious print
# TODO: optimize print layout
# TODO: Google Analytics
# TODO: Optimizely?

get '/' do
  slim :resume
end
