puts "Loaded DataSource::InMemory::Payment"

module DataSource
  module InMemory
    class Payment
      def create
        puts "#create in DataSource::InMemory::Payment"
      end
    end
  end
end
