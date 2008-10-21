module Searchgasm
  # = Config
  # Adds default configuration for all of searchgasm. For rails the best place to do this is in config/initializers. Create a file in there called searchgasm.rb with the following content:
  #
  # === Example
  #
  #   # config/iniitializers/searchgasm.rb
  #   Searchgasm::Config.configure do |config|
  #     config.search.per_page = 25
  #     config.helpers.order_by_link_asc_indicator = "My indicator"
  #   end
  #
  # For a list of all configuration options see Searchgasm::Config::Search and Searchgasm::Config::Helpers
  class Config
    class << self
      # Convenience method for setting configuration
      # See example at top of class.
      def configure
        yield self
      end
      
      def search # :nodoc:
        Search
      end
      
      def helpers # :nodoc:
        Helpers
      end
    end
  end
end