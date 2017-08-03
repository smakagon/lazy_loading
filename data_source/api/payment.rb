puts "Loaded DataSource::Api::Payment"

module DataSource
  module Api
    class Payment
      def create
        puts "#create in DataSource::Api::Payment"
      end
    end
  end
end
