class Company < ApplicationRecord
  belongs_to :contact
  belongs_to :location
  belongs_to :equipment
end
