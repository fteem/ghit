require './lib/ghit/ssh_globals'

describe Ghit::SshGlobals do

  let(:remote) { "origin\tgit@github.com:author/name.git (fetch)" }
  subject{ described_class.new(remote) }

  it 'extracts author name from remote' do
    expect(subject.author).to eq "author"
  end

  it 'extracts repo name from remote' do
    expect(subject.repository).to eq "name"
  end

  it 'extracts repo url from remote' do
    expect(subject.url).to eq "https://github.com/author/name"
  end

end