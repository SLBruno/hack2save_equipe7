require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Relationships" do
    it { is_expected.to have_and_belong_to_many :jobs }
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(build(:category)).to be_valid
    end

    it "is invalid with empty name" do
      category = build(:category, name: "")
      expect(category).to_not be_valid
    end
  end
end
