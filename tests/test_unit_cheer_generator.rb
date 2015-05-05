require_relative 'test_helper'

#require 'bundler/setup'

class TestCheerGenerator < Minitest::Test

  def a_test
    output = "hello"
    expected = 838383
    assert_equal output, expected
  end

end
