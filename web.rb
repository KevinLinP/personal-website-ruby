require 'sinatra'
require 'slim'
require 'kramdown'

get '/' do
  slim :index, locals: {resume_markdown: File.open('RESUME.md').read}
end
