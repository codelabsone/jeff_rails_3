class DepartmentsController < ApplicationController
  def index
    @departments = ["Sales", "Finance", "Inventory"]
  end
end
