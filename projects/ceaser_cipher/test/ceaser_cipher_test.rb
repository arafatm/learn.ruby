# test/test_ceaser_cipher.rb
require 'minitest/autorun'
require_relative '../../../test/test_helper'
require_relative '../lib/ceaser_cipher'

class TestceaserCipher < Minitest::Test
  def test_shifts_lowercase_letters_correctly
    assert_equal('def', ceaser_cipher('abc', 3))
  end

  def test_shifts_uppercase_letters_correctly
    assert_equal('DEF', ceaser_cipher('ABC', 3))
  end

  def test_wraps_around_the_alphabet
    assert_equal('abc', ceaser_cipher('xyz', 3))
  end

  def test_maintains_non_alphabet_characters
    assert_equal('Bmfy f xywnsl!', ceaser_cipher('What a string!', 5))
  end

  def test_handles_a_shift_factor_of_0
    assert_equal('Hello, World!', ceaser_cipher('Hello, World!', 0))
  end

  def test_handles_a_negative_shift_factor
    assert_equal('abc', ceaser_cipher('def', -3))
  end
end