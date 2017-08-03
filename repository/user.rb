puts "Loaded Repository::User"

module Repository
  class User < Base
    def find
      data_source.find
    end
  end
end
