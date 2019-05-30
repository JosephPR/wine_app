require 'rails_helper'

RSpec.describe Note, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Note' do
    before do
      @note = Note.create(sweetness: 'dry')
    end

    it 'has a sweetness' do
      expect(Note.where(sweetness:"dry").first).to eql(@note)
    end
  end


  describe 'Note' do
    before do
      @note = Note.create(acidity: 'low')
    end

    it 'has a acidity' do
      expect(Note.where(acidity:"low").first).to eql(@note)
    end
  end

  describe 'Note' do
    before do
      @note = Note.create(tanin: 'high')
    end

    it 'has a tanin' do
      expect(Note.where(tanin:"high").first).to eql(@note)
    end
  end

  describe 'Note' do
    before do
      @note = Note.create(body: 'full')
    end

    it 'has a body' do
      expect(Note.where(body:"full").first).to eql(@note)
    end
  end

  describe 'Note' do
    before do
      @note = Note.create(alcohol: 12)
    end

    it 'has a alcohol' do
      expect(Note.where(alcohol: 12).first).to eql(@note)
    end
  end
end
