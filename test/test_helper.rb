require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/reverse_sentence2'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/reverse_sentence2"
require_relative "../lib/sort_by_length"

