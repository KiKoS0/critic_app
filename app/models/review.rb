class Review < ApplicationRecord
  belongs_to :prof

  default_score -> { order(created_at: :desc) }
  validates :prof_id, presence: true
  validates :content, presence: true, length: { maximum:200}

end