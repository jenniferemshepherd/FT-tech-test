require './app/models/rating'

describe Rating do
  describe '.all' do
    it 'returns all the scores' do
      ratings = Rating.all

      expect(ratings).to include(0)
      expect(ratings).to include(-2)
      expect(ratings).to include(2)
      expect(ratings).to include(1)
    end
  end
end
