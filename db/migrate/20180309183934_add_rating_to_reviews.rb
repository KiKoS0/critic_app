class AddRatingToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :like, :boolean
  end
end
