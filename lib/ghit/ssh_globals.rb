module Ghit
  class SshGlobals

    attr_reader :url, :repository, :author

    def initialize remote
      @remote       = remote
      @author       = extract_author
      @repository   = extract_repository
      @url          = extract_url
    end

    private

    def extract_url
      "https://github.com/#{@author}/#{@repository}"
    end

    def extract_author 
      @remote.split[-2].split("/")[0].split(":")[-1]
    end

    def extract_repository
      @remote.scan(/\/(.*).git/).join
    end

  end
end