puts "Loaded DataSource::InMemory::User"

module DataSource
  module InMemory
    class User
      def find
        puts "#find in DataSource::InMemory::User"
      end
    end
  end
end
