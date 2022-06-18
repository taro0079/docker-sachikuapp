class UserTravelingExpensesController < ApplicationController
  def index
    @expenses = TravelingExpense.where(user_id: params[:target_user_id])
  end
end
