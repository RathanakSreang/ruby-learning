class TestingEvalMethod
  def method_testing(method1, params={}, header={},format="",proxy=nil)
    puts "method1 = #{method1}"
    puts "params = #{params}"
    puts "herader = #{header}"
    puts "format = #{format}"
    puts "proxy= #{proxy}"
  end
end
TestingEvalMethod.class_eval do
  class << self
    def method_testing(method1, params={}, header={}, format="json", proxy=nil)
      method_testing(method1, params, header, format)
    end
  end
end
obj = TestingEvalMethod.new
obj.method_testing("methods", {key1: "params"}, {key12:"header"}, "", "proxy 11111111")
