class Entry < ApplicationRecord

  belongs_to :user

  validates :amount_cents, presence: true, numericality:  { greater_than: 0 }
  validates :released_at, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  validates :user, presence: true

  monetize :amount_cents

  scope :incomes, -> { where(kind: "income") }
  scope :expenses, -> { where(kind: "expenses") }

end


# total_income = current_user.entries.incomes.sum(:amount)
# total_expenses = current_user.entries.expenses.sum(:amount)


# balance = total_income - total_expenses

# balance.format
