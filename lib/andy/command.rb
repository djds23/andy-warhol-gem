class Command
  attr_accessor :command,
                :group

  def initialize(text)
    command_array = text.split
    @command, @group = command_array
  end

  def process!
    case @command
    when 'add'
    when 'boot'
    when 'nuke'
    end
  end
end

