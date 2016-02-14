require 'spec_helper'

describe TextParser do
  subject { described_class.new('add') }
  it 'has a command and group' do
    expect(subject.command).to eq 'add'
    expect(subject.args).to eq []
  end
end

