class Article < ActiveRecord::Base
  include Versionable
  after_update :commit

    
  
end
