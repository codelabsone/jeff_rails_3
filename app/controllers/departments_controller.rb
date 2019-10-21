class DepartmentsController < ApplicationController
  def index
    @department = Department.all
  end

  def show
    @departments = Department.find(params[:id])
  end

  def create
    @departments = Department.find(params[:id])
  end
end
