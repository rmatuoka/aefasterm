class Notice < ActiveRecord::Base
    has_many :notice_images
    
    validates_presence_of :title
    validates_presence_of :body
    validates_presence_of :summary
    
    has_attached_file :image, :styles => { :thumb => "125x125>", :home => "218x108>", :homeint => "202x36>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
