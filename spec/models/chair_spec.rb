require 'rails_helper'

# RSpec.describe Chair, :type => :model do
describe Chair do

  it { should validate_uniqueness_of(:name) }


  # it 'validates uniqueness of chair name' do
  #   chair = FactoryGirl.build(:chair)
  #   chair.name = 'red chair'

  #   expect(chair.valid?).to eq(true)
  # end

  # it 'rejects non unique chair names' do
  #   chair2 = FactoryGirl.build(:chair)
  #   chair2.name = 'red chair'

  #   expect(chair2.valid?).to eq(false)
  # end

end
