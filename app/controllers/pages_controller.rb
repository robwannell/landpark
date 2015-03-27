class PagesController < ApplicationController
  def vision
  end

  def contact
  end
  
  def support
    
  end
  
  def donors
    
    @levels = Admin::ContributionLevel.all
    @contributors = Contribution.all
    
    render layout: "donors"
  end
  
end
