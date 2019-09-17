class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end
  def show
    @departments = Department.show(params[:id])

  end
end
