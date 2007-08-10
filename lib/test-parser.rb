require 'test-parser/version'
require 'rake'
require File.dirname(__FILE__) + '/test-parser/parsers/base.rb'
FileList[File.dirname(__FILE__) + '/test-parser/parsers/*.rb'].each {|parser| require parser}

module TestParser
  def self.parsers
    {:rspec => TestParser::RSpec,
     :pyunit => TestParser::PyUnit,
     :junit => TestParser::JUnit,
     :rubyunit => TestParser::RubyUnit,
     :quickCheck => TestParser::QuickCheck,
     :cutest => TestParser::CuTest}
  end
end