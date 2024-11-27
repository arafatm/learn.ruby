# sub_strings_test.rb
require 'minitest/autorun'
require_relative '../../../test/test_helper'
require_relative '../lib/sub_strings'

class SubStringsTest < Minitest::Test
  # Set up a dictionary of words to be used in our tests. This dictionary was
  # taken from the prompt for the substrings exercise.
  def setup
    @dictionary =
    ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low",
    "own", "part", "partner", "sit"]
  end

  def test_substrings_single_word
    result = substrings("below", @dictionary)
    expected = { "below" => 1, "low" => 1 }
    assert_equal expected, result
  end

  def test_substrings_sentence
    result = substrings("Howdy partner, sit down! How's it going?", @dictionary)
    expected = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
    "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    assert_equal expected, result
  end
end