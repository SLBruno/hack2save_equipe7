class Institution < ApplicationRecord
  validates_presence_of :name, :email, :phone, :address, :city, :state, :country, :password

  has_many :jobs
  has_many :reviews_made, as: :reviewer, class_name: :Review
  has_many :reviews_received, as: :reviewed, class_name: :Review
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
