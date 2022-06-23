class UserTravelingExpensesController < ApplicationController
  def index
    @expenses = TravelingExpense.where(user_id: params[:target_user_id])
  end

  def new
    @traveling_expense = TravelingExpense.where(user_id: 1)
  end
end
