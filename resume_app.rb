require 'sinatra'
require 'slim'
require 'rugged'

# TODO: rewrite Avvo section
# TODO: optimize print layout
# TODO: Google Analytics
# TODO: Optimizely?

get '/' do
  last_resume_commit = `git log --max-count=1 views/resume.slim`
  last_updated = last_resume_commit.match(/Date:\s+(.+)$/).captures.first

  local_vars = {
    serious_print: !!params[:srs],
    last_updated: DateTime.parse(last_updated),
    phone_number: nil
  }
  local_vars[:phone_number] = ENV['KEVINS_PHONE_NUMBER'] if !!params[:beyonce] # put a ring on it.

  slim :resume, locals: local_vars
end
