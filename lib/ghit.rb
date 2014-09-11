require "ghit/version"

module Ghit
  autoload :Globals,         'ghit/globals.rb'
  autoload :HttpGlobals,     'ghit/http_globals.rb'
  autoload :SshGlobals,      'ghit/ssh_globals.rb'
  autoload :RepoLocator,     'ghit/repo_locator.rb'
  autoload :Errors,          'ghit/errors.rb'
  autoload :RemoteExtracter, 'ghit/remote_extracter.rb'
end
