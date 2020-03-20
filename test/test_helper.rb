require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/reverse_sentence'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/reverse_sentence_option_2"
require_relative "../lib/reverse_sentence_option_1"
require_relative "../lib/sort_by_length"

