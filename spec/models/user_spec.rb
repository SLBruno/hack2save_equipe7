require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "is true with valid attributes" do
      expect(build(:user)).to be_valid
    end

    it "is invalid when passwords doesn't match" do
      user = build(:user, password_confirmation: "another password")
      expect(user).to_not be_valid
    end

    it "is invalid with empty name" do
      user = build(:user, name: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty password" do
      user = build(:user, password: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty email" do
      user = build(:user, email: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty phone" do
      user = build(:user, phone: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty address" do
      user = build(:user, address: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty city" do
      user = build(:user, city: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty state" do
      user = build(:user, state: "")
      expect(user).to_not be_valid
    end

    it "is invalid with empty country" do
      user = build(:user, country: "")
      expect(user).to_not be_valid
    end
  end
end
