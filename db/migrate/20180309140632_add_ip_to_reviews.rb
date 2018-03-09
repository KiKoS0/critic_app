class AddIpToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :ip, :string

    add_index :reviews, [:ip, :prof_id],unique: true
  end
end
