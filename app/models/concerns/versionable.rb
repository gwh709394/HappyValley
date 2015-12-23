module Versionable
    extend ActiveSupport::Concern

    included do 
        has_many :versions, as: :versionable 
    end

    def commit
      puts "#{self.previous_changes}"
      self.versions.create("user_id":1, "name":"version_number", "content":self.previous_changes.to_json)
    end
    
    def roll_back
    end
    

end