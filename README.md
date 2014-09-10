Ghit
=============

## What is this?

Ghit is a collection of custom ```git``` commands that allows the user to easily navigate to
certain Github pages of the repo (if it exists). Also, it contains semantic git messages inspired by Sparkbox's awesome article on [semantic commit messages](http://seesparkbox.com/foundry/semantic_commit_messages).


## Installation

    $ gem install ghit

That's it!

## Usage

There are 11 (woot!) new ```git``` commands now.

* ```git wiki```    -> Opens the Github wiki page of the repo in browser.
* ```git pulls```   -> Opens the Github pull requests page of the repo in broswer.
* ```git issues```  -> Opens the Github issues page of the repo in broswer.
* ```git open```    -> Opens the Github repo page in browser.
* ```git feat "commit-message-here"``` -> ```git commit -m 'feat: commit-message-here'```
* ```git docs "commit-message-here"``` -> ```git commit -m 'docs: commit-message-here'```
* ```git chore "commit-message-here"``` -> ```git commit -m 'chore: commit-message-here'```
* ```git fix "commit-message-here"``` -> ```git commit -m 'fix: commit-message-here'```
* ```git refactor "commit-message-here"``` -> ```git commit -m 'refactor: commit-message-here'```
* ```git style "commit-message-here"``` -> ```git commit -m 'style: commit-message-here'```
* ```git test "commit-message-here"``` -> ```git commit -m 'test: commit-message-here'```

If you would still like to use your text editor for your commit messages
you can omit the message, and do your commit message in your editor.

* ```git feat``` -> ```git commit -m 'feat: ' -e```


## Worth sayin'
Still has some rough edges. Needs tests, refactoring and various improvements.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/ghit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
