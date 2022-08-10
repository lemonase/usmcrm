class Company < ApplicationRecord
  has_many :contact
  has_many :location
  has_many :equipment
end
