# IfTrueIfFalse

A gem to emulate as similar as possible, the smalltalk ifTrue and ifFalse messages.

This gem doesn't only execute the closure, but it returns the the value of the closure evaluation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'if_true_if_false'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install if_true_if_false

## Usage

These are the three ways of use this gem
```ruby
true_condition.if_true { 'ok' } #will execute and return what is into the closure

false_condition.if_true { 'ok' }.if_false { 'false' } #will execute and return what is into the second closure, namly, 'false'

false_condition.if_true { 'ok' } #will return false_condition and won't execute the closure

false_condition.if_false { 'false' } #will return 'false' as expected
```

### Not Possible way of use this Gem

Since the way Ruby treats blocks and semantically wouldn't be right, this case is not ponderated:

```ruby
any_condition.if_false { 'something' }.if_true { 'other' }
```

Namely, if_false can't be before if_true

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/if_true_if_false/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
