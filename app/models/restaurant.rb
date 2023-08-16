class Restaurant < ApplicationRecord
  # This line defines a Ruby class called 'Restaurant' that inherits from 'ApplicationRecord'.
  # It represents a restaurant entity in the database.

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  # This constant array 'CATEGORIES' contains predefined cuisine categories for restaurants.
  # It specifies the valid options for the 'category' attribute.

  has_many :reviews, dependent: :destroy
  # This association establishes a one-to-many relationship between the 'Restaurant' model and the 'Review' model.
  # It means that a restaurant can have multiple reviews, and the 'dependent: :destroy' option ensures that
  # if a restaurant is deleted, its associated reviews will be deleted as well.

  validates :name, :address, presence: true
  # These validation rules ensure that both the 'name' and 'address' attributes of a restaurant must be present
  # (i.e., not empty) when saving the restaurant into the database.

  validates :category, inclusion: { in: CATEGORIES }
  # This validation ensures that the value of the 'category' attribute must be one of the values specified
  # in the 'CATEGORIES' array. It restricts the 'category' to only the predefined cuisine categories.

end
