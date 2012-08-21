require 'spec_helper'

describe Owner do
  describe 'validations' do
    it 'succeeds' do
      expect(FactoryGirl.build(:owner)).to be_valid
    end

    describe 'presence' do
      %w[first_name last_name email].each do |attr|
        it "#{attr} fails" do               # it "first_name fails" do
          owner = FactoryGirl.build(:owner)
          owner.send("#{attr}=", nil)       # e.g., set first_name to nil
          expect(owner).to_not be_valid
        end
      end
    end
  end

  describe 'associations' do
    it 'has many pets' do
      owner = FactoryGirl.create(:owner)
      pet   = FactoryGirl.create(:pet)
      owner.pets << pet
      expect(owner.pets).to eql([pet])
    end
  end
end
