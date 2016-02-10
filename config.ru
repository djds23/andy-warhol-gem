require "andy"
require "rubygems"
require "sinatra"
require "rack/contrib"
require "slack-ruby-client"

Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end


use Rack::PostBodyContentTypeParser
run QueueBot
