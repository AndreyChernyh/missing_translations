[![Build Status](https://travis-ci.org/andreychernih/missing_translations.png?branch=master)](https://travis-ci.org/andreychernih/missing_translations)
# missing_translations

Shows missing I18n keys in Rails applications. It parses all view files searching for [t] helper invocation. [haml], [erb] and [slim] (without Translator plugin) views are supported.

## Installation

Add the following line to your ```Gemfile```:

```ruby
gem 'missing_translations'
```

## How to run

```
bundle exec rake missing_translations:show
```

[haml]: http://haml.info/
[erb]: http://ruby-doc.org/stdlib-2.1.2/libdoc/erb/rdoc/ERB.html
[slim]: http://slim-lang.com/
[t]: http://api.rubyonrails.org/classes/ActionView/Helpers/TranslationHelper.html#method-i-t
