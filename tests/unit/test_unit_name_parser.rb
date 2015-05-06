require_relative '../test_helper'
require_relative '../../lib/cheer'

class TestNameParser < Minitest::Test
  def test_unit_0a_raise_error_for_name_thats_blank
    assert_raises(ArgumentError) do
      Cheer.for_person('')
    end
  end

  def test_unit_0b_raise_error_for_name_thats_all_whitespace
    assert_raises(ArgumentError) do
      Cheer.for_person('  ')
    end
  end

  def test_unit_0c_raise_error_for_name_that_has_no_word_characters
    assert_raises(ArgumentError) do
      Cheer.for_person('*!?')
    end
  end

  def test_unit_0d_raise_error_for_birthday_instead_of_name
    assert_raises(ArgumentError) do
      Cheer.for_person('08/25')
    end
  end
end
