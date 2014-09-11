module Ghit
  module Stats

    class CodeFrequency
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
        code_frequency = fetch_freq_data
        print_output_heading
        code_frequency.each do |date, additions, deletions|
          date = unixtime_to_date date
          format_and_print_freq_data date, additions, deletions
        end
        print_fourty_one_dashes
      end

      private

      def format_and_print_freq_data date, additions, deletions
        puts "#{date}\t#{Rainbow(additions).green}\t\t#{Rainbow(deletions).red}"
      end

      def unixtime_to_date timestamp
        DateTime.strptime(timestamp.to_s, "%s").to_date.to_s
      end

      def fetch_freq_data
        @stats.code_frequency(user: @globals.author, repo: @globals.repository).body
      end

      def print_output_heading
        puts "From:\t\tAdditions\tDeletions"
        print_fourty_one_dashes
      end

      def print_fourty_one_dashes
        puts "-" * 41
      end
    end
  end
end