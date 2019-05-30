require 'rails_helper'

RSpec.describe Varietal, type: :model do
  describe 'Varietal' do
    before do
      @varietal = Varietal.create(name: 'Varietal1')
    end

    it 'has a name' do
      expect(Varietal.where(name:"Varietal1").first).to eql(@varietal)
    end
  end
end
