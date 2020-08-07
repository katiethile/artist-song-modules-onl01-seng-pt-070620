module Findable 
  def find_by_name
      def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
  end 

end 