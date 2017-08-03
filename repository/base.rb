module Repository
  class Base
    attr_reader :data_source

    def initialize(data_source)
      @data_source = data_source
    end
  end
end
