require 'sinatra'
require 'slim'

# TODO: debug SASS >:[
# TODO: deploy!
# TODO: finish content

get '/' do
  slim :resume
end
