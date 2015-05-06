require_relative '../test_helper'
require_relative '../../lib/cheer'

class TestCheer < Minitest::Test
  def test_unit_0a_cheer_valid_name
    actual = Cheer.for_person("Ed")
    expected = "Give me an.. E!\n" +
               "Give me a... D!\n" +
               "Ed's just GRAND!"
    assert_equal expected, actual
  end

  def test_unit_1a_cheer_name_with_spaces
    actual = Cheer.for_person("Mary Jane")
    expected = "Give me an.. M!\n" +
               "Give me an.. A!\n" +
               "Give me an.. R!\n" +
               "Give me a... Y!\n" +
               "Give me a... J!\n" +
               "Give me an.. A!\n" +
               "Give me an.. N!\n" +
               "Give me an.. E!\n" +
               "Mary Jane's just GRAND!"
    assert_equal expected, actual
  end

  def test_unit_1b_cheer_name_with_hyphens
    actual = Cheer.for_person("Mary-Jane")
    expected = "Give me an.. M!\n" +
               "Give me an.. A!\n" +
               "Give me an.. R!\n" +
               "Give me a... Y!\n" +
               "Give me a... J!\n" +
               "Give me an.. A!\n" +
               "Give me an.. N!\n" +
               "Give me an.. E!\n" +
               "Mary-Jane's just GRAND!"
    assert_equal expected, actual
  end

  def test_unit_1c_cheer_all_an_letters
    actual = Cheer.for_person("AEFHILMNORSX")
    expected = "Give me an.. A!\n" +
               "Give me an.. E!\n" +
               "Give me an.. F!\n" +
               "Give me an.. H!\n" +
               "Give me an.. I!\n" +
               "Give me an.. L!\n" +
               "Give me an.. M!\n" +
               "Give me an.. N!\n" +
               "Give me an.. O!\n" +
               "Give me an.. R!\n" +
               "Give me an.. S!\n" +
               "Give me an.. X!\n" +
               "AEFHILMNORSX's just GRAND!"
    assert_equal expected, actual
  end

  def test_unit_2a_cheer_birthday_today
    actual = Cheer.for_birthday("05/05")
    expected = "Awesome! Your birthday is today! Happy Birthday!"
    assert_equal actual, expected
  end

  def test_unit_2b_cheer_birthday_tomorrow
    actual = Cheer.for_birthday("05/06")
    expected = "Awesome! Your birthday is in 1 day! Happy Birthday in advance!"
    assert_equal actual, expected
  end

  def test_unit_2c_cheer_birthday_yesterday
    actual = Cheer.for_birthday("05/04")
    expected = "Awesome! Your birthday is in 364 days! Happy Birthday in advance!"
    assert_equal actual, expected
  end

  def test_unit_2d_cheer_birthday_in_near_future
    actual = Cheer.for_birthday("06/02")
    expected = "Awesome! Your birthday is in 28 days! Happy Birthday in advance!"
    assert_equal actual, expected
  end

  def test_unit_2e_cheer_backwards_day
    assert_raise(ArgumentError) do
      Cheer.for_birthday("25/05")
    end
  end
end
