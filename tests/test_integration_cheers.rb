require_relative 'test_helper'

#require 'bundler/setup'

class TestCheersIntegration < Minitest::Test

  def test_no_input
    shell_output = ""
    expected = ""
    IO.popen('./cheers', 'r+') do |pipe|
      expected << "Hello! What is your name?\n"
      pipe.puts "Bry"
      expected << "Give me a... B!\n"
      expected << "Give me an... R!\n"
      expected << "Give me a... Y!\n"
      expected << "BRY is just GRAND!\n"
      expected << "Nice to meet you, BRY! Now, what is your birthday?"
      pipe.puts "05/06"
      expected <<  "\nAwesome! Your birthday is in 1 day! Happy Birthday in advance!"
      pipe.close_write
      shell_output = pipe.read
    end
    assert_equal expected, shell_output
  end

  def test_happy_path_with_birthday_in_future
    fail

  end

  def test_happy_path_with_birthday_today
    fail

  end

  def test_happy_path_with_birthday_in_past
    fail

  end
end
