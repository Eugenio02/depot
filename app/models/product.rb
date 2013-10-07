class Product < ActiveRecord::Base
 default_scope :order => 'title'
	
 #Valitation	
 validates :title, :description, :image_url, :presence => true
 validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
 validates :title, :uniqueness => true 
 validate :image_url, :format => { :with => %r{\.(gif|jpg|png)$}i, :message => 'must be' }
end
