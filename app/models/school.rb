class School < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  belongs_to :category

  acts_as_gmappable   :latitude => 'latitude', :longitude => 'longitude', :process_geocoding => true,
  					  #:lat => 'latitude', :lng => 'longitude', :process_geocoding => :geocode?,
	                  :address => "street", :normalized_address => "street",
                      :msg => "Sorry, not even Google could figure out where that is"

  #geocoded_by :address   # can also be an IP address
  #after_validation :geocode          # auto-fetch coordinates

  attr_accessible :street, :category_id, :category_name, :email_address, :city, :instructors, :long_description, :name, :phone, :price, :short_description, :state, :verified, :zip


  def gmaps4rails_address
	#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
	"#{self.street}, #{self.city}, #{self.zip}" 
  end

  def gmaps4rails_infowindow
      "<h4>#{self.name}</h4><p>#{self.street}</p>"
  end

  def geocode?
  (!address.blank? && (lat.blank? || lng.blank?)) || address_changed?
  end

  def to_label 
    "#{category_name}" 
   end
end
