class Restaurant < ApplicationRecord
  # Set up relationshio with Review
  has_many :reviews, dependent: :destroy

  # Valiation: make sure every restaurant has a name, address, category when saving into database
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
