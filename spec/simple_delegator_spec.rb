require "spec_helper"

describe SimpleDelegator do
  before(:all) do
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
  end

  it "delegates hello to bar" do
    Bar.any_instance.expects(:hello)
    Foo.new.hello
  end

  it "delegates goodbye to bar as hello" do
    Bar.any_instance.expects(:hello)
    Foo.new.goodbye
  end

  it "delegates whatever to itself as okay" do
    Foo.any_instance.expects(:okay)
    Foo.new.whatever
  end
end