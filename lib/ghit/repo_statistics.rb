module Ghit
  class RepoStatistics
    def initialize
      globals = Ghit::Globals.new
      code_frequency = Github::Client::Repos::Statistics.new.code_frequency(user: globals.author, repo: globals.repository).body
      code_frequency.each do |date, additions, deletions|
        puts date
        puts additions 
        puts deletions
      end
    end
  end
end