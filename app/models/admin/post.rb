class Admin::Post < ApplicationRecord
	
	attr_accessor :avatar
	

	 has_attached_file :avatar, styles: { medium: "400x400", thumb: "100x100", large: "800x800" }
  
validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png) 
belongs_to :user
end
