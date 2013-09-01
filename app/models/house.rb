class House < ActiveRecord::Base
  
  def self.ten_house_report
  	House.last(10)
  end

end
