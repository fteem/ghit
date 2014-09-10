module Ghit
  class HttpRemoteUrlBuilder
    def initialize remote, page = nil
      @remote = remote
      @page   = page
    end

    def build
      "https://github.com/#{author}/#{name}/#{@page}"
    end

    private

    def repo_url
      @remote.split[1]
    end

    def author
      repo_url.split('/')[-2]
    end

    def name
      repo_url.split('/')[-1]
    end
  end
end