require 'slack-ruby-client'
require 'rack/contrib'
require 'sinatra'
require 'json'

require 'andy/parsers/text_parser'
require 'andy/parsers/topic_parser'

require 'andy/commands/add'
require 'andy/commands/boot'
require 'andy/commands/nuke'

class QueueBot < Sinatra::Base


  before '/*' do
    if params['token'] != ENV['SLACK_TOKEN']
      halt 401, 'Not Authorized'
    end
  end

  get '/' do
    "CODENAME: ANDY WARHOL"
  end

  post '/api/v1/queue/?' do
    text = params['text']
    parser = TextParser.new(text)
  end
end

