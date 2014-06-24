require 'rails_helper'

RSpec.describe Review, :type => :model do

  it { should have_valid(:body)
    .when('This is a review') }

  it { should_not have_valid(:body)
    .when('')}

  it { should have_valid(:rating)
    .when('1', '5', '1.5') }

  it { should_not have_valid(:rating)
    .when('-1', '5.5', '2.34') }

end
