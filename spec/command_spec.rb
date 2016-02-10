require 'spec_helper'

describe Command do
  subject { Command.new('add') }
  it 'has a command and group' do
    expect(subject.command).to eq 'add'
    expect(subject.args).to eq []
  end
end

