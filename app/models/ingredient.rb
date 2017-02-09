class Ingredient < ApplicationRecord
  has_many :doses
  before_destroy :check_for_cocktails
  validates :name, uniqueness: true, length: { minimum: 1 }

  private

  def check_for_cocktails
    if doses.any?
      errors.add_to_base("You cannot delete an ingredient used in a cocktail.")
      return false
    end
  end
end
