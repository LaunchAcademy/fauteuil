require 'rails_helper'

describe User do

it { should validate_uniqueness_of(:username) }

end
