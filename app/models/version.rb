class Version < ActiveRecord::Base
  belongs_to :versionable, polymorphic: true
end
