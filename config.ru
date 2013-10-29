require 'rubygems'
require 'bundler'
Bundler.setup

require 'rack'

app = Rack::Builder.new do
  map '/ping' do
    ping = ->(env) { [200, {'Content-Type' => 'text/plain'}, ["PONG"]] }
    run ping
  end
end
run app
