class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def sales
    @department = Department.find_by(name: "Sales")
    @sales = @department.sale
    render template:
    "departments/sales"

  end
end
