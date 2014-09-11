module Ghit
  class RepoLocator

    class << self
      def open page = nil
        new(page).open
      end
    end

    def initialize(page = nil)
      @page   = page
      @globals = Ghit::Globals.new
    end

    def open
      %x(open #{build_url})
    end

    private

    def build_url
      "#{@globals.url}/#{@page}"
    end

  end

end