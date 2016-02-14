require 'slack-ruby-client'
require 'rack/contrib'
require 'sinatra'
require 'json'

require 'andy/parse'

class QueueBot < Sinatra::Base

  @client = Slack::Web::Client.new

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
    command = Command.new(text)
  end

  def get_topic
    response = @client.channel_info(channel: '#deploys')
    response.channel.topic.value
  end
end

