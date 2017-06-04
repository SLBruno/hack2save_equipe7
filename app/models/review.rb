class Review < ApplicationRecord
  validates_presence_of :content, :grade

  belongs_to :reviewer, polymorphic: true
  belongs_to :reviewed, polymorphic: true
end
