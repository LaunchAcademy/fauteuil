require 'rails_helper'

describe Chair do
  it { should belong_to(:category) }

  it { should validate_uniqueness_of(:name) }

  it { should have_valid(:name).when('office chair', 'chair', 'long chair', 'stool') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:location).when('Boston', 'Launch Academy', 'floor') }
  it { should_not have_valid(:location).when(nil, '') }
end
