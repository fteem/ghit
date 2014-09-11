module Ghit
  module Stats

    class PunchCard
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
        punch_card_data = fetch_punch_card_data
        commits_by_day = group_data_by_day punch_card_data

        print_hours_line
        commits_by_day.each do |day_ordinal, daily_commits_per_hour|
          print get_weekday day_ordinal
          print_commits_count daily_commits_per_hour
        end
      end

      private

      def print_commits_count commits_group
        commits_group.each {|day, hour, commits| print "#{commits}\t" }
        puts
      end

      def fetch_punch_card_data
        @stats.punch_card(user: @globals.author, repo: @globals.repository).body
      end

      def group_data_by_day punch_card_data
        punch_card_data.group_by {|i| i.first }
      end

      def print_hours_line
        print "\t"
        (00..23).to_a.each {|num| print "#{num}:00\t" }
        puts
      end

      def get_weekday day
        case day
        when 0
          "Mon\t"
        when 1
          "Tue\t"
        when 2
          "Wed\t"
        when 3
          "Thu\t"
        when 4
          "Fri\t"
        when 5
          "Sat\t"
        when 6
          "Sun\t"
        end
      end
      
    end
  end
end
