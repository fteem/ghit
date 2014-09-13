module Ghit
  class RepoLocator

    class << self
      def open page = nil
        new(page).open
      end
    end

    def initialize(page = nil)
      @page    = page
      @globals = Ghit::Globals.new
    end

    def open
      if RUBY_PLATFORM =~ /darwin/i
        open_for_osx
      elsif RUBY_PLATFORM =~ /linux/i
        open_for_linux
      end
    end

    private

    def open_for_linux
      %x(xdg-open #{build_url})
    end

    def open_for_osx
      %x(open #{build_url})
    end

    def build_url
      "#{@globals.url}/#{@page}"
    end

  end

end