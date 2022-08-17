module Exceptions
  class ApiBase
    class GetSuperError < RuntimeError
      def message
        'Cannot get the super heroes'
      end
    end
  end
end
