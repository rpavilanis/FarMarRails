# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('seeds_csvs/markets.csv') do |csv_obj|
  Market.create(id: csv_obj['id'].to_i, name: csv_obj['name'], address: csv_obj['address'], city: csv_obj['city'], county: csv_obj['county'], state: csv_obj['state'], zip: csv_obj['zip'])
end

CSV.foreach('seeds_csvs/products.csv') do |csv_obj|
  Product.create(id: csv_obj['id'].to_i, name: csv_obj['name'], vendor_id: csv_obj['vendor_id'].to_i)
end

CSV.foreach('seeds_csvs/vendors.csv') do |csv_obj|
  Vendor.create(id: csv_obj['id'].to_i, name: csv_obj['name'], employees: csv_obj['employees'].to_i, market_id: csv_obj['market_id'].to_i)
end

CSV.foreach('seeds_csvs/sales.csv') do |csv_obj|
  Sale.create(id: csv_obj['id'].to_i, amount: csv_obj['amount'].to_i, purchase_time: csv_obj['purchase_time'], vendor_id: csv_obj['vendor_id'].to_i, product_id: csv_obj['product_id'].to_i)
end
