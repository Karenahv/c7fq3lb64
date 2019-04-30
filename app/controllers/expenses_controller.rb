class ExpensesController < ApplicationController

  before_action :authenticate_user!

  def index
    if user_signed_in?
     @expenses = Expense.order("date DESC")
   else
     link_to "Sign up", new_user_registration_path
   end
  end
end
