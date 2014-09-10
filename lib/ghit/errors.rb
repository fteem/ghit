module Ghit
  module Errors
    class Ghit::Errors::NoRemotesFound < StandardError; end
    class Ghit::Errors::NoOriginRemote < StandardError; end
  end
end