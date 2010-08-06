class User < ActiveRecord::Base
  validates_uniqueness_of :twitter
  validates_presence_of :twitter
end
