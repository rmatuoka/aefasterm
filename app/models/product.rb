class Product < ActiveRecord::Base
    belongs_to :category
    has_many :product_images
    
    validates_presence_of :title
end
