require './app/models/database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to the database through PG' do
      expect(PG).to receive(:connect).with('postgres://localhost/ft_ratings_test')
      DatabaseConnection.setup('postgres://localhost/ft_ratings_test')
    end

    it 'has a persistent connection' do
      connection = DatabaseConnection.setup('postgres://localhost/ft_ratings_test')
      expect(DatabaseConnection.connection).to eq connection
    end
  end

  describe '.query' do
    it 'executes a query via PG' do
      connection = DatabaseConnection.setup('postgres://localhost/ft_ratings_test')
      expect(connection).to receive(:exec).with("SELECT * FROM ratings;")
      DatabaseConnection.query("SELECT * FROM ratings;")
    end
  end
end
