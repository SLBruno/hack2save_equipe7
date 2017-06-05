class JobApplication < ApplicationRecord
  validates_inclusion_of :finished, :accepted, in: [true, false]

  belongs_to :job
  belongs_to :user
end
