require 'dry/container'
require 'dry/auto_inject'
require_relative 'repository/registry'
require_relative 'repository/base'

DATA_SOURCE = $env == 'development' ? 'in_memory' : 'api'

Repository::Registry.register('user_repository', memoize: true) do
  require_relative 'repository/user'
  require_relative "data_source/#{DATA_SOURCE}/user"

  data_source_class = Repository::Registry.data_source_class(DATA_SOURCE, :user)
  Repository::User.new(data_source_class.new)
end

Repository::Registry.register('payment_repository', memoize: true) do
  require_relative 'repository/payment'
  require_relative "data_source/#{DATA_SOURCE}/payment"

  data_source_class = Repository::Registry.data_source_class(DATA_SOURCE, :payment)
  Repository::Payment.new(data_source_class.new)
end

RepositoryImport = Dry::AutoInject(Repository::Registry)
