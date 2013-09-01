class House < ActiveRecord::Base
  
  def ten_house_report
  	House.last(10)
  end

end
