require 'rails_helper'

describe User do

  it { should validate_uniqueness_of(:username) }
  it { should have_valid(:role).when('user','admin')}

  it { should have_valid(:email).when('user@gmail.com')}
  it { should_not have_valid(:email).when(nil,'')}

  it { should have_valid(:username).when('user123')}
  it { should_not have_valid(:username).when(nil,'')}
end
