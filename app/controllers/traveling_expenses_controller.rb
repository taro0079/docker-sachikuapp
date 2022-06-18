class TravelingExpensesController < ApplicationController
  def index
    @traveling_expense = TravelingExpense.all
  end
end
