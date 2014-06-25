require 'rails_helper'

RSpec.describe Review, :type => :model do

  it { should have_valid(:body).when('This is a review') }

  it { should have_valid(:rating).when(1, 5, 2.5) }

  it { should_not have_valid(:rating).when(-1, '', nil, 0.7) }

end
