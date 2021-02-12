class Announcement < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :announcement, presence: true, length: { maximum: 140 }
  validates :expiration, presence: true
  has_many :reads
end
