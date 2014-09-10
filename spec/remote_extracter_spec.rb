require 'spec_helper'

describe Ghit::RemoteExtracter do
  let(:raw_origin) { "origin\tgit@github.com:author/name.git (fetch)\norigin\tgit@github.com:author/name.git (push)\n" }
  let(:raw_github) { "github\tgit@github.com:author/name.git (fetch)\ngithub\tgit@github.com:author/name.git (push)\n" }

  it "extracts the 'origin' remote" do
    expect(described_class).to receive(:`).and_return raw_origin
    expect(described_class.extract!).to eq "origin\tgit@github.com:author/name.git (fetch)"
  end

  it 'raises an error if there are no remotes for current repo' do
    expect(described_class).to receive(:`).and_return("")
    expect{
      described_class.extract!
    }.to raise_error Ghit::Errors::NoRemotesFound
  end

  it 'raises an error if theres no remote named "origin"' do
    expect(described_class).to receive(:`).and_return raw_github
    expect{
      described_class.extract!
    }.to raise_error Ghit::Errors::NoOriginRemote
  end
end