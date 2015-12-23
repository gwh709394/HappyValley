module Versionable
    extend ActiveSupport::Concern

    included do 
        has_many :versions, as: :versionable 
    end

    def commit(version_content)
      
    end
    
    def roll_back
    end
    

end