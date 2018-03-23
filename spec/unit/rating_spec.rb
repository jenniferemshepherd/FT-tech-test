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


# subject(:rating) {described_class.create(3)}

# it 'has an id' do
#   expect(rating.id).to eq 1
# end

# it 'has a score' do
#   expect(rating.score).to eq 3
# end
