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

  describe 'Varietal' do
    before do
      @varietal = Varietal.create(description: 'Full body and MAD THICC')
    end

    it 'has a description' do
      expect(Varietal.where(description:"Full body and MAD THICC").first).to eql(@varietal)
    end
  end

  describe 'Varietal' do
    before do
      @varietal = Varietal.create(image_url: 'sexylocalwinedrinkingsingles.com')
    end

    it 'has an image' do
      expect(Varietal.where(image_url:"sexylocalwinedrinkingsingles.com").first).to eql(@varietal)
    end
  end

  describe 'Varietal' do
    before do
      thiccgrape = Varietal.create(name: "Thicc Grape")
      @varietals = Varietal.all
    end

    it 'has Varietals' do
      expect(@varietals.count).to be >= 1
    end
  end
end
