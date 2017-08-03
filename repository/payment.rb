puts "Loaded Repository::Payment"

module Repository
  class Payment < Base
    def create
      data_source.create
    end
  end
end
