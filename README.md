# IfTrue-IfFalse

A gem to emulate as similar as possible the smalltalk ifTrue and ifFalse messages.

This gem doesn't only execute the closure, but it returns the value of the closure evaluation.

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

false_condition.if_true { 'ok' }.if_false { 'false' } #will execute and return what is into the second closure, namely, 'false'

false_condition.if_true { 'ok' } #will return false_condition and won't execute the closure

false_condition.if_false { 'false' } #will return 'false' as expected
```

### Not Possible way of use this Gem

Since the way Ruby treats blocks and semantically wouldn't be right, this case is not taken into account:

```ruby
any_condition.if_false { 'something' }.if_true { 'other' }
```

Namely, if_false can't be before if_true


## Contributing

1. Fork it ( https://github.com/gabriel128/if_true_if_false/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
