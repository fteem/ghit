module Ghit
  class RepoLocator

    class << self
      def open page = nil
        new(page).open
      end
    end

    def initialize(page = nil)
      @remote = Ghit::RemoteExtracter.extract!
      @page   = page
    end

    def open
      %x(open #{build_url})
    end

    private

    def build_url
      if is_http_remote?
        HttpRemoteUrlBuilder.new(@remote, @page).build
      else
        SshRemoteUrlBuilder.new(@remote, @page).build 
      end
    end

    def is_http_remote?
      @remote =~ /https?/
    end
  end

end