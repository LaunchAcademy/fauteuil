require 'rails_helper'

RSpec.describe Vote, :type => :model do
  it { should have_valid(:like).when(-1,0,1) }

  it { should_not have_valid(:like).when(-5,10)}
end
