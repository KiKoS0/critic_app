class Review < ApplicationRecord
  belongs_to :prof

  has_many :reports

  default_scope -> { order(created_at: :desc) }

  validates :name, presence: true, length: { maximum:50}
  validates :email, presence: false, length: { maximum:50}

  validates :ip, presence: true, length: {maximum:50}
  
  validates :prof_id, presence: true
  validates :content, presence: true, length: { maximum:350000}

  validates_inclusion_of :like, in: [true, false], message: "must be present"

  HUMANIZED_ATTRIBUTES = {
    :like => "An opinion",
    :content => "Review content"
  }

  def self.human_attribute_name(attr, options={})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

end
