require 'rails_helper'

describe Chair do

  it { should validate_uniqueness_of(:name) }

end
