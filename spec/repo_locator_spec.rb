require 'spec_helper'

describe Ghit::RepoLocator do
  let(:locator) { described_class.new }
  
  it 'opens the URL in browser' do
    dummy_url = "origin https://github.com/author/name (fetch)"
    expect(Ghit::RemoteExtracter).to receive(:extract!).and_return dummy_url
    expect(locator).to receive(:`)
    locator.open
  end
end