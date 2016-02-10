require 'spec_helper'

describe Command do
  subject { Command.new('add 1') }
  it 'has a command and group' do
    expect(subject.command).to eq 'add'
    expect(subject.group).to eq '1'
  end
end
