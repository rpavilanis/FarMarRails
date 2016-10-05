class SalesController < ApplicationController
  def findSale
    return Sale.find(params[:id].to_i)
  end

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
