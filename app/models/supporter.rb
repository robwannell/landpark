class Supporter < ActiveRecord::Base
  default_scope  {order 'lastname ASC, organization ASC, rank DESC'}
end
