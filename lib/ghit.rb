require "ghit/version"

module Ghit
  autoload :RepoLocator,          'ghit/repo_locator.rb'
  autoload :Errors,               'ghit/errors.rb'
  autoload :HttpRemoteUrlBuilder, 'ghit/http_remote_url_builder.rb'
  autoload :SshRemoteUrlBuilder,  'ghit/ssh_remote_url_builder.rb'
  autoload :RemoteExtracter,      'ghit/remote_extracter.rb'
end
