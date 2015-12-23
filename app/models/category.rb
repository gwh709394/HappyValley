class Category < ActiveRecord::Base
  include Versionable
  after_update :commit
  
  def commit
    if previous_changes['name'].any?
      
    end
  end
end
