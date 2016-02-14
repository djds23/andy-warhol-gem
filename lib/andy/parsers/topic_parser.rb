class TopicParser
  @client = Slack::Web::Client.new

  def initialize
    topic = get_topic
  end

  def groups
  end

  def get_topic
    response = @client.channel_info(channel: '#deploys')
    response.channel.topic.value
  end
end

