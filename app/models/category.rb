class Category < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :schools

  def to_label 
    "#{self.name}" 
   end
end
