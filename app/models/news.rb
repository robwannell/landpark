class News < ActiveRecord::Base
  
  default_scope  {order 'created_at DESC'}
  
  
  has_attached_file :avatar, :styles => { :platinum => "250x250", :medium => "820x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 
  
  validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 2.megabytes
  
  validates_attachment :avatar,
    :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
    
    
end
