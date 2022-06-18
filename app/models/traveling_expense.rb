class TravelingExpense < ApplicationRecord
  belongs_to :user
  def index
    @traveling_expense = TravelingExpense.where(user_id: params[:target_user_id])
  end
end
