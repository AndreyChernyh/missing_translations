[![Build Status](https://travis-ci.org/andreychernih/missing_translations.png?branch=master)](https://travis-ci.org/andreychernih/missing_translations)
# missing_translations

Shows missing I18n keys for Rails 3 application. It parses all view files searching for ```t``` helper invocation. ```HAML``` and ```ERB``` views are supported.

## Installation

Add the following line to your ```Gemfile```:

```ruby
gem 'missing_translations'
```

## How to run

```
bundle exec rake missing_translations:show
```

## Contributing to missing_translations
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Andrey Chernih. See LICENSE.txt for
further details.

