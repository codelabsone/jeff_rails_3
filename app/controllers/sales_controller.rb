class SalesController < ApplicationController
  def index
    @sales = @department.sales
  end
end
