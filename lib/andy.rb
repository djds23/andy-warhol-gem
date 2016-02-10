require 'slack-ruby-client'
require 'rack/contrib'
require 'sinatra'
require 'json'

require 'andy/command'

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
  end

  def get_topic
    response = @client.channel_info(channel: '#deploys')
    Command.new(response.channel.topic.value)
  end
end

