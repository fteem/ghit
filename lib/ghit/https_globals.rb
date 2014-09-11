module Ghit
  class HttpsGlobals

    attr_reader :url, :author, :repository

    def initialize remote 
      @remote     = remote
      @url        = extract_url
      @author     = extract_author
      @repository = extract_repository_name
    end

    private

    def extract_url
      @remote.split[-2]
    end

    def extract_author
      @remote.split('/')[-2]
    end

    def extract_repository_name
      extract_url.split('/')[-1]
    end

  end
end