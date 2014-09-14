Ghit
=============
[![Build Status](https://travis-ci.org/fteem/ghit.svg?branch=master)](https://travis-ci.org/fteem/ghit)
[![Code Climate](https://codeclimate.com/github/fteem/ghit/badges/gpa.svg)](https://codeclimate.com/github/fteem/ghit)

## What is this?

Ghit is a collection of custom ```git``` commands that allows the user to easily navigate to
certain Github pages of the repo (if it exists), or get some repo statistics in the terminal.

## Installation

    $ gem install ghit

That's it!

If you are using Ubuntu/Debian-based OS, ```xdg-utils``` is a dependency. You can install it using:

```sudo apt-get xdg-utils```

## Usage

There are 8 new ```git``` commands now.

The following commands allow you to easily navigate to repo's Github (sub)page.

* ```git wiki```    -> Opens the Github wiki page of the repo in browser.
* ```git pulls```   -> Opens the Github pull requests page of the repo in broswer.
* ```git issues```  -> Opens the Github issues page of the repo in broswer.
* ```git open```    -> Opens the Github repo page in browser.
* ```git freq```    -> Shows a table with weekly code frequency statistics (additions/deletions).
* ```git contributors``` -> Shows a table with all of the users that contributed to the repo.
* ```git punch-card``` -> Shows a (rather big) punch card with all of the commits traffic for the repo grouped by weekdays and time.
* ```git churn``` -> Shows a list of most edited files in the repo.

## Worth sayin'
* Still has some rough edges. Needs tests, refactoring and various improvements.
* Since repo statistics data is cached, there's a possibilty that sometimes the commands might not return a result. If that happens, re-run the command in 10 seconds. That's plenty of time for Github to compute and cache the new statistics. Future releases will handle this more gracefully.

## Git semantic commits
If you'd like to improve your commit messages composition, take a look at [git-semantic-commits](https://github.com/fteem/git-semantic-commits). This can work nicely with the functionality that this gem provides.

## Contributing

1. Fork it ( http://github.com/fteem/ghit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Made by [@fteem](http://github.com/fteem). Thanks to [@ristovskiv](http://github.com/ristovskiv) for helping.
