require 'rubygems'
require 'geminabox'

Geminabox.data = './gems'
Geminabox.rubygems_proxy = true

use Rack::Session::Cookie, secret: ENV['SESSION_SECRET']
use Rack::Protection

run Geminabox::Server
