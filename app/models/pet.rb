class Pet < ActiveRecord::Base
  validates :name          , presence: true
  validates :date_of_birth , presence: true

# belongs_to :owner
end
