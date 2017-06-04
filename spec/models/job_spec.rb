require 'rails_helper'

RSpec.describe Job, type: :model do
  describe "Validations" do
    it { should belong_to :institution }

    it { have_and_belong_to_many :categories }

    it { have_many :job_applications }

    it do
      have_many(:candidates)
      .through(:job_applications)
      .source(:user)
    end
  end

  describe "Validations" do
    it "is true with valid attributes" do
      expect(build(:job)).to be_valid
    end

    it "is invalid with empty description" do
      job = build(:job, description: "")
      expect(job).to_not be_valid
    end

    it "is invalid when not associated to an institution" do
      job = build(:job, institution: nil)
      expect(job).to_not be_valid
    end

    it "is invalid with empty closed flag" do
      job = build(:job, closed: "")
      expect(job).to_not be_valid
    end

    it "haves closed equal to false by default" do
      expect(build(:job).closed).to be_falsey
    end
  end
end
