require 'spec_helper'

describe Pet do
  describe 'validations' do
    it 'succeeds' do
      expect(FactoryGirl.build(:pet)).to be_valid
    end

    describe '#name' do
      describe 'presence' do
        it 'fails' do
          pet = FactoryGirl.build(:pet, name: nil)

          expect(pet).to_not be_valid
        end
      end
    end

    describe '#date_of_birth' do
      describe 'presence' do
        it 'fails' do
          pet = FactoryGirl.build(:pet, date_of_birth: nil)

          expect(pet).to_not be_valid
        end
      end
    end
  end
end
