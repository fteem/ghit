require './lib/ghit/https_globals'

describe Ghit::HttpsGlobals do

  let(:remote){ "origin\thttps://github.com/someone/something (fetch)" }

  subject{ described_class.new(remote) }

  it 'extracts author name from remote' do
    expect(subject.author).to eq "someone"
  end

  it 'extracts repo name from remote' do
    expect(subject.repository).to eq "something"
  end

  it 'extracts repo url from remote' do
    expect(subject.url).to eq "https://github.com/someone/something"
  end

end