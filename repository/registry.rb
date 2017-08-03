module Repository
  class Registry
    extend Dry::Container::Mixin

    def self.data_source_class(data_source, entity)
      Module.const_get(
        "DataSource::#{data_source.split('_').collect(&:capitalize).join}::#{entity.capitalize}"
      )
    end
  end
end
