module Ghit
  class SshRemoteUrlBuilder
    def initialize remote, page = nil
      @remote = remote
      @page   = page
    end

    def build
      "https://github.com/#{author}/#{name}/#{@page}"
    end

    private

    def name
      repo_data.split('/').last.gsub(/\.git/, '').strip
    end

    def author
      repo_data.split('/').first.strip
    end

    def repo_data
      @remote.split(':').last.split.first
    end

  end
end