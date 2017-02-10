class AddReferenceToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :cocktail, foreign_key: true, index: true
  end
end
