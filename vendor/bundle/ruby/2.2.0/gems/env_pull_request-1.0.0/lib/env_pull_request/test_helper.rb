module EnvPullRequest
  # Test helper for pull request with environment variables
  module TestHelper
    module_function

      # Stash original environment variables for pull request.
      # And delete for testing.
      #
      # @example with test-unit
      #   require 'env_pull_request/test_helper'
      #
      #   class TestExample < Test::Unit::TestCase
      #     extend ::EnvPullRequest::TestHelper
      #
      #     def self.startup
      #       stash_env_pull_request
      #     end
      #   end
      #
      # @return [void]
      #
      # @see Base#fetch_pull_request_id
      def stash_env_pull_request
        @original_travis_pull_request = ENV['TRAVIS_PULL_REQUEST']
        @original_circle_pr_number = ENV['CIRCLE_PR_NUMBER']
        @original_ghprb_pull_id = ENV['ghprbPullId']
        ENV.delete 'TRAVIS_PULL_REQUEST'
        ENV.delete 'CIRCLE_PR_NUMBER'
        ENV.delete 'ghprbPullId'
      end

      # Restore original environment variables for pull request.
      #
      # @example with test-unit
      #   require 'env_pull_request/test_helper'
      #
      #   class TestExample < Test::Unit::TestCase
      #     extend ::EnvPullRequest::TestHelper
      #
      #     def self.shutdown
      #       restore_env_pull_request
      #     end
      #   end
      #
      # @return [void]
      #
      # @see Base#fetch_pull_request_id
      def restore_env_pull_request
        @original_travis_pull_request ||= nil
        @original_circle_pr_number ||= nil
        @original_ghprb_pull_id ||= nil
        ENV['TRAVIS_PULL_REQUEST'] = @original_travis_pull_request
        ENV['CIRCLE_PR_NUMBER'] = @original_circle_pr_number
        ENV['ghprbPullId'] = @original_ghprb_pull_id
      end
  end
end
