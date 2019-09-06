class DepartmentsController < ApplicationController
  def index
    @departments = ["Sales", "Finance", "Service"]
  end
end
