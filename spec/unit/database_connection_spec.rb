require './app/models/database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to the database through PG' do
      expect(PG).to receive(:connect).with(dbname: 'ft_ratings_test')
      DatabaseConnection.setup('ft_ratings_test')
    end

    it 'has a persistent connection' do
      connection = DatabaseConnection.setup('ft_ratings_test')
      expect(DatabaseConnection.connection).to eq connection
    end
  end

  # describe '.query' do
  #
  # end
end
