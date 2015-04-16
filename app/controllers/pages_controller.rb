class PagesController < ApplicationController
  def vision
  end

  def contact
  end
  
  def support
    @individuals = Supporter.where(:individual => true)
    @groups = Supporter.where(:group => true)
    @electeds = Supporter.where(:elected => true)
  end
  
  def donors
    
    @levels = Admin::ContributionLevel.all
    @contributors = Contribution.all
    
  end
  
end
