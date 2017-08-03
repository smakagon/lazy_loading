puts "Loaded DataSource::Api::User"

module DataSource
  module Api
    class User
      def find
        puts "#find user in DataSource::Api::User"
      end
    end
  end
end
