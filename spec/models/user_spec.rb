require "rails_helper"

describe User do

  it { should validate_uniqueness_of(:username) }
  it { should have_valid(:role).when("user", "admin") }

  it { should have_valid(:email).when("user@gmail.com") }
  it { should_not have_valid(:email).when(nil, "") }

  it { should have_valid(:username).when("user123") }
  it { should_not have_valid(:username).when(nil, "") }
end

describe "#admin?" do
  it "is not an admin if the role is not admin" do
    user = User.new(role: "user")
    expect(user).to_not be_admin
  end

  it "is an admin if the role is admin" do
    user = User.new(role: "admin")
    expect(user).to be_admin
  end
end
