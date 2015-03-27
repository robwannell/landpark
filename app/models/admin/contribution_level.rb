class Admin::ContributionLevel < ActiveRecord::Base
  belongs_to :contribution
   default_scope  {order 'rank ASC'}
end
