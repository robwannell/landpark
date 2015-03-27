class Contribution < ActiveRecord::Base
  belongs_to :admin_contribution_level, :class_name => "Admin::ContributionLevel"
  default_scope  {order 'lastname ASC'}
  
  has_attached_file :avatar, :styles => { :platinum => "250x250", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 
  
  validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes
  
  validates_attachment :avatar,
    :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
    
end
