class MarketsController < ApplicationController

  def findMarket
    return Market.find(params[:id].to_i)
  end

  def index
    @markets = Market.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
