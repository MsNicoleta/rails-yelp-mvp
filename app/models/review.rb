class Review < ApplicationRecord
  # Define the 'Review' model class that inherits from 'ApplicationRecord'.

  belongs_to :restaurant
  # Establish a relationship: Each review belongs to a specific restaurant.
  # This connection links reviews to their respective restaurants in the database.

  validates :rating, :content, presence: true
  # Set validation rules: Both the rating and content must be present when saving a review.

  # validates :rating, numericality: true
  validates :rating, numericality: { only_integer: true }
  # Validate the rating for numericality: It must only accept integer values (whole numbers).

  validates :rating, inclusion: { in: (0..5) }
  # Restrict the rating attribute to a range of 0 to 5 (inclusive).
  # This ensures that ratings fall within a typical 0 to 5 scale.

end
