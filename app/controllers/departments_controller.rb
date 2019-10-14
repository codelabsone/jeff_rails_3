class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @departments = Department.find(params[:id])
  end

  def create
    @loan_amount = :loan_amount.to_f
    @trade_in = :trade_in.to_f
    @total_loan = @loan_amount - @trade_in
    redirect_to :back
  end
end
