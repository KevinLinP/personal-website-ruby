require 'sinatra/base'
require 'sinatra/assetpack'
require 'slim'
require 'sass'

class ResumeApp < Sinatra::Base

  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets do
    css :application, ['/css/layout.css']
    css :print, ['/css/print.css']

    css_compression :sass
  end

  get '/' do
    slim :resume
  end

  run! if app_file == $0
end
