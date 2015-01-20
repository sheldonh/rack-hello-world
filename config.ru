require 'rubygems'
require 'bundler'
Bundler.setup

require 'rack'

app = Rack::Builder.new do
  map '/' do
    hello = ->(env) { [200, {'Content-Type' => 'text/plain'}, ["Hello, world!\n"]] }
    run hello
  end
  map '/ping' do
    ping = ->(env) { [200, {'Content-Type' => 'text/plain'}, ["PONG\n"]] }
    run ping
  end
end
run app
