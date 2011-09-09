require 'rubygems'
require 'sinatra'
require 'rocco'

get '/' do
  'read!'
end

get '*' do |path|
  # strip preceeding forward slash
  path = path[1..-1] if path[0] == ?/
  path = File.expand_path(path)
  return 'illiterate' unless File.exists? path

  Rocco.new(path).to_html
end

run Sinatra::Application
