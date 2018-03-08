class Review < ApplicationRecord
  belongs_to :prof

  default_scope -> { order(created_at: :desc) }

  validates :prof_id, presence: true
  validates :content, presence: true, length: { maximum:1500000}

end
