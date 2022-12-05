# frozen_string_literal: true
require "failed_test_capture/version"
require 'minitest/reporters'

module FailedTestCapture
  class FailedTestReporter < Minitest::Reporters::BaseReporter
    def start
      @output_file = File.new('tmp/failed_test_output.txt', 'w')
    end

    def report
      @output_file.close
    end

    def record(test)
      @output_file.puts test.failure.message
      @output_file.puts test.failure.location
    end
  end
end

