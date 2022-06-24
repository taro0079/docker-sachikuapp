# frozen_string_literal: true
class TravelingExpense < ApplicationRecord
  belongs_to :user
  scope :amount_all, lambda {
    all.sum(:amount)
  }
end
