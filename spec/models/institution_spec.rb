require 'rails_helper'

RSpec.describe Institution, type: :model do
  describe "Validations" do
    it "is true with valid attributes" do
      expect(build(:institution)).to be_valid
    end

    it "is invalid when passwords doesn't match" do
      institution = build(:institution, password_confirmation: "another password")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty name" do
      institution = build(:institution, name: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty password" do
      institution = build(:institution, password: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty email" do
      institution = build(:institution, email: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty phone" do
      institution = build(:institution, phone: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty address" do
      institution = build(:institution, address: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty city" do
      institution = build(:institution, city: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty state" do
      institution = build(:institution, state: "")
      expect(institution).to_not be_valid
    end

    it "is invalid with empty country" do
      institution = build(:institution, country: "")
      expect(institution).to_not be_valid
    end
  end
end
