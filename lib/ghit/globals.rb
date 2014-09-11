module Ghit
  class Globals
    def initialize
      @remote = Ghit::RemoteExtracter.extract!
      @globals = if http_remote?
        Ghit::HttpsGlobals.new @remote
      else
        Ghit::SshGlobals.new @remote
      end
    end

    def url
      @globals.url
    end

    def author
      @globals.author
    end

    def repository
      @globals.repository
    end

    private

    def http_remote?
      @remote =~ /https?/
    end

  end
end