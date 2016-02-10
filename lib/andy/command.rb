class Command
  attr_accessor :command,
                :group

  def initialize(text)
    command_array = text.split
    @command, @group = command_array

    self
  end
end
