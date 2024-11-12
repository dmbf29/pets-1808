class Pet < ApplicationRecord
  # associations
  validates :found_on, presence: true
  validates :location, presence: true
  SPECIES = ['capybara', 'chicken', 'monkey', 'crocodile', 'bird', 'dog']
  validates :species, inclusion: { in: SPECIES }
end

# Pet::SPECIES
