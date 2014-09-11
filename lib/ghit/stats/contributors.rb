module Ghit
  module Stats

    class Contributors
      class << self
        def get!
          new.get
        end
      end

      def initialize
        @globals = Ghit::Globals.new
        @stats   = Github::Client::Repos::Statistics.new
      end

      def get
        contributors = fetch_contributors
        
        print_output_heading
        contributors.each do |c|
          print_contributor_data c
        end
        print_fourty_dashes
      end

      private

      def fetch_contributors
        @stats.contributors(user: @globals.author, repo: @globals.repository).body
      end

      def print_output_heading
        puts "List of contributors to this repository:"
        print_fourty_dashes 
        puts "Username\t\tProfile URL"
        print_fourty_dashes   
      end

      def print_fourty_dashes
        puts "-" * 40
      end

      def print_contributor_data contrib
        if contrib.respond_to? :author
          puts "#{contrib.author.login}\t\t#{contrib.author.html_url}"
        else
          puts "#{contrib.login}\t\t#{contrib.html_url}"
        end
      end

    end

  end
end