class TravelingExpense < ApplicationRecord
  belongs_to :user
  scope :amount_all, -> {
    all.sum(:amount)
  }
end
