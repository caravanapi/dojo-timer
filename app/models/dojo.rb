class Dojo < ActiveRecord::Base
  validates_presence_of :name
  has_and_belongs_to_many :users

  def after_initialize
    self.time ||= 7
  end
end
