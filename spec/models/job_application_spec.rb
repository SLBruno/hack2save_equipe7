require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(build(:job_application)).to be_valid
    end

    it "is invalid when not associated to an user" do
      job_application = build(:job_application, user: nil)
      expect(job_application).to_not be_valid
    end

    it "is invalid when not associated to a job" do
      job_application = build(:job_application, job: nil)
      expect(job_application).to_not be_valid
    end

    it "is invalid with empty finished flag" do
      job_application = build(:job_application, finished: "")
      expect(job_application).to_not be_valid
    end

    it "is invalid with empty accepted flag" do
      job_application = build(:job_application, accepted: "")
      expect(job_application).to_not be_valid
    end

    it "haves finished equal to false by default" do
      expect(build(:job_application).finished).to be_falsey
    end

    it "haves accepted equal to false by default" do
      expect(build(:job_application).accepted).to be_falsey
    end
  end
end
