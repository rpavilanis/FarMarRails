class VendorsController < ApplicationController

  def findVendor
    return Vendor.find(params[:id].to_i)
  end

  def index
    @vendors = Vendor.all
  end

  def new
  end

  def show
    @vendor = findVendor
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
