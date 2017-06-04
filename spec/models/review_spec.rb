require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(build(:review)).to be_valid
    end

    it "is invalid with empty grade" do
      review = build(:review, grade: "")
      expect(review).to_not be_valid
    end

    it "is invalid with empty content" do
      review = build(:review, content: "")
      expect(review).to_not be_valid
    end
  end
end
