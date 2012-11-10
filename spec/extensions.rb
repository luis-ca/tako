module RSpec
  module Mocks

    class MessageExpectation

      def with_permitted_params(*args, &block)

        @implementation = lambda { |params_for_project|
          params_for_project.keys.to_set.map(&:to_sym).should == args.to_set.map(&:to_sym)
        }

        self
      end

    end
  end
end