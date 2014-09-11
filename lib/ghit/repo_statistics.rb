module Ghit
  class RepoStatistics
    def initialize
      globals = Ghit::Globals.new
      code_frequency = Github::Client::Repos::Statistics.new.code_frequency(user: globals.author, repo: globals.repository).body
      puts "From:\tAdditions\tDeletions"
      puts "---------------------------"
      code_frequency.each do |date, additions, deletions|
        date = DateTime.strptime(date.to_s, "%s")
        puts "#{date.to_date.to_s}\t#{additions}\t#{deletions}"
      end
      puts "---------------------------"
    end
  end
end