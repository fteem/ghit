require "ghit/version"
require 'github_api'
require 'rainbow'

module Ghit
  autoload :Globals,         'ghit/globals'
  autoload :HttpGlobals,     'ghit/http_globals'
  autoload :SshGlobals,      'ghit/ssh_globals'
  autoload :RepoLocator,     'ghit/repo_locator'
  autoload :Errors,          'ghit/errors'
  autoload :RemoteExtracter, 'ghit/remote_extracter'
  autoload :Stats,           'ghit/stats'
end
