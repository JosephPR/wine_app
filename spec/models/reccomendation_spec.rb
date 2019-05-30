require 'rails_helper'

RSpec.describe Recommendation, type: :model do

  describe 'Recommendation' do
    before do
      @recommendation = Recommendation.create(name: 'Sexy Thicc Grapes')
    end

    it 'has a name' do
      expect(Recommendation.where(name:"Sexy Thicc Grapes").first).to eql(@recommendation)
    end
  end

end
