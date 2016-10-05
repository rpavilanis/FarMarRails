class Market < ActiveRecord::Base
  has_many :vendors
  has_many :products
  has_many :sales

  validates :name, presence: true, uniqueness: true
  validates :address, :city, :state, :zip, :county, presence: true

end
