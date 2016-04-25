require 'pry'
module M
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      def rathanak
        puts "Rathanak"
      end
    end
  end

  module ClassMethods
    def title
      puts "test methods"
    end

    def hello
      puts "hell methods"
    end
  end
end

class Test
  include M
end
# p = Test.new
Test.rathanak