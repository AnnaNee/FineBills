class Entry < ApplicationRecord
  belongs_to :user
  validates :amount_cents, presence: true, numericality:  { greater_than: 0 }
  validates :released_at, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  validates :user, presence: true
end
