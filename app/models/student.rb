class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    if self.active == true
      puts "active"
    else
      puts "inactive"
    end
  end

end
