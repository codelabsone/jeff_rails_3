class SalesController < ApplicationController
  def index
    @sales = Sales.all
  end
end
