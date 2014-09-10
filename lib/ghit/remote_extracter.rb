module Ghit
  class RemoteExtracter
    class << self
      def extract!
        raw_remotes = %x(git remote -v)
        raise Ghit::Errors::NoRemotesFound.new("No Git remotes found for this repository.") if raw_remotes.empty?
        remotes = raw_remotes.split "\n"
        origin = remotes.detect {|r| r =~ /origin/i }
        raise Ghit::Errors::NoOriginRemote.new("No remote named 'origin' found for this repository.") if origin.nil?
        return origin
      end
    end
  end
end