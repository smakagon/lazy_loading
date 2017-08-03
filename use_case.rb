$env = 'development'

# should be run just once, not fo each use case run
require_relative 'initializer'

class CreatePayment
  include RepositoryImport[:payment_repository, :user_repository]

  def call
    user_repository.find
    payment_repository.create
  end
end

CreatePayment.new.call
