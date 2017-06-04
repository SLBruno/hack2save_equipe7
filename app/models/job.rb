class Job < ApplicationRecord
  validates_presence_of :description
  validates_inclusion_of :closed, in: [true, false]

  belongs_to :institution
  has_and_belongs_to_many :categories
end
