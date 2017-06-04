class Job < ApplicationRecord
  validates_presence_of :description
  validates_inclusion_of :closed, in: [true, false]

  belongs_to :institution
end
