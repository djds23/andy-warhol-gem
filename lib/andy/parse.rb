class Parse
  attr_accessor :command,
                :args

  def initialize(text)
    command_array = text.split
    @command = command_array[0]
    @args = command_array[1..-1]
  end

  def process!
    case @command
    when 'add'
    when 'boot'
    when 'nuke'
    end
  end
end

