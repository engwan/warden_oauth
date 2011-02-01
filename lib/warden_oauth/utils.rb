module Warden
  module OAuth

    #
    # Contains methods from Rails to avoid unnecessary dependencies
    #
    module Utils

      #
      # Fetched from ActiveSupport::Inflector.camelize to avoid dependencies
      #
      def camelize(lower_case_and_underscored_word, first_letter_in_uppercase = true)
        if first_letter_in_uppercase
          lower_case_and_underscored_word.to_s.gsub(/\/(.?)/) { "::#{$1.upcase}" }.gsub(/(?:^|_)(.)/) { $1.upcase }
        else
          lower_case_and_underscored_word.first.downcase + camelize(lower_case_and_underscored_word)[1..-1]
        end
      end

      module_function :camelize

    end

  end
end
