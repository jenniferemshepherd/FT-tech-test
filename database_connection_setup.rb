require './app/models/database_connection'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('ft_ratings_test')
else
  DatabaseConnection.setup('ft_ratings')
end
