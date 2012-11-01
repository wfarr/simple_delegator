# SimpleDelegator

Adds simple delegation to all Objects.

## Installation

Add this line to your application's Gemfile:

    gem 'simple_delegator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_delegator

## Usage

``` ruby
class Foo
  delegate :hello,    :to => :bar
  delegate :goodbye,  :to => :bar, :as => :hello
  delegate :whatever, :as => :okay

  def initialize
    @bar = Bar.new
  end

  def okay; puts "fiiiiiine"; end
end

class Bar
  def hello; puts "hello"; end
end

f = Foo.new

f.hello    #=> "hello"
f.goodbye  #=> "hello"
f.whatever #=> "fiiiiiine"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
