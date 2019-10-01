class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @departments = Department.find(params[:id])
  end

end
