class Image < ActiveRecord::Base
	has_attached_file :picture, :styles => { :medium => "300x300px", :thumb => "100x100px" }
	validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
