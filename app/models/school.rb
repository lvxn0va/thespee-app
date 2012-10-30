class School < ActiveRecord::Base
  attr_accessible :address, :category_id, :city, :instructors, :long_description, :name, :phone, :price, :short_description, :state, :verified, :zip
end
