module Yaffle
  module ActsAsYaffle
    extend ActiveSupport::Concern

    include do
    end

    module ClassMethods
      def acts_as_yaffle(options = {})
        cattr_accessor :yaffle_text_field
        self.yaffle_text_field = (options[:yaffle_text_field] || :last_squawk).to_s

        include Yaffle::ActsAsYaffle::LocalInstanceMethods
      end
    end

    module LocalInstanceMethods
      def squawk(string)
        write_attribute(self.class.yaffle_text_field, string.to_squawk)
      end
    end
  end
end

ActiveRecord::Base.send :include, Yaffle::ActsAsYaffle
