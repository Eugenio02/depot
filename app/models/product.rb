class Product < ActiveRecord::Base
	validates :title, :description, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :title, :uniqueness => true 
	validates :image_url, :format => { :width => %r{\.(gif|jpg|png)$}i, :message => 'Must be a URL for GIF, JPG or PNG image.' }
end