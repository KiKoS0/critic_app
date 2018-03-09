class Review < ApplicationRecord
  belongs_to :prof

  default_scope -> { order(created_at: :desc) }

  validates :name, presence: true, length: { maximum:50}
  validates :email, presence: false, length: { maximum:50}

  validates :prof_id, presence: true
  validates :content, presence: true, length: { maximum:350000}


end
