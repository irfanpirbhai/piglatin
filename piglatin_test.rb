require 'test/unit'
require_relative 'piglatin_converter'

class TestAdd < Test::Unit::TestCase

	def test_one_consonant_before_a_vowel
		assert_equal "igpay", PiglatinConverter.convert("pig")
	end

	def test_two_consontants_before_a_vowel
		assert_equal "oeshay", PiglatinConverter.convert("shoe")
	end

	def test_group_of_consontants_before_a_vowel
		assert_equal "ingstray", PiglatinConverter.convert("string")
	end

	def test_Caps_at_beginning
		assert_equal "ingstray", PiglatinConverter.convert("String")
	end

	def test_MixedcasE
		assert_equal "ingstray", PiglatinConverter.convert("StrinG")
	end

	def test_emptystring
		assert_equal "", PiglatinConverter.convert("")
	end

	def test_nil
		assert_equal nil, PiglatinConverter.convert(nil)
	end

	def test_word_beginning_with_vowel
		assert_equal "orangeway", PiglatinConverter.convert("orange")
	end

	def test_non_alphabetical_characters_entered
		assert_equal nil, PiglatinConverter.convert("123%")
	end
end