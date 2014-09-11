require 'spec_helper'

describe Ghit::Globals do
  subject { described_class.new }

  before :each do
    expect(Ghit::RemoteExtracter).to receive(:extract!).and_return "origin\tgit@github.com:someone/something.git (fetch)"
  end

  it '#author - returns author Github username' do
    expect(subject.author).to eq "someone"
  end

  it '#repository - returns Github repository name' do
    expect(subject.repository).to eq "something"
  end

  it '#url - returns Github repository url' do
    expect(subject.url).to eq "https://github.com/someone/something"
  end

end