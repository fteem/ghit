require 'spec_helper'

describe Ghit::HttpRemoteUrlBuilder do
  let(:raw_origin) { "origin  https://github.com/fteem/ghit (fetch)" }

  it 'creates valid URL out of raw remote string' do
    expect(described_class.new(raw_origin).build).to eq "https://github.com/fteem/ghit/"
  end

  it 'appends optional page parameter to url' do
    expect(described_class.new(raw_origin, 'something').build).to eq "https://github.com/fteem/ghit/something"
  end
end