module Ghit
  class RepoStatistics
    def initialize
      @globals = Ghit::Globals.new
    end

    def code_frequency
      code_frequency = Github::Client::Repos::Statistics.new.code_frequency(user: @globals.author, repo: @globals.repository).body
      puts "From:\t\tAdditions\tDeletions"
      puts "-" * 41
      code_frequency.each do |date, additions, deletions|
        date = DateTime.strptime(date.to_s, "%s")
        puts "#{date.to_date.to_s}\t#{Rainbow(additions).green}\t\t#{Rainbow(deletions).red}"
      end
      puts "-" * 41
    end
  end
end