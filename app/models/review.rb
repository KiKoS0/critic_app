class Review < ApplicationRecord
  belongs_to :prof

  default_scope -> { order(created_at: :desc) }

  validates :typer_name, presence: true, length: { maximum:50}
  validates :typer_email, presence: false, length: { maximum:50}

  validates :prof_id, presence: true
  validates :content, presence: true, length: { maximum:350}


end
