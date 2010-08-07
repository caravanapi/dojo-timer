class Dojo < ActiveRecord::Base
  validates_presence_of :name
  has_and_belongs_to_many :users

  def user_twitters=(twitters)
    self.users = twitters.split(',').map{ |twitter| User.find_or_create_by_twitter(twitter.lstrip) }
  end

  def user_twitters
    users.map{ |user| user.twitter }
  end

  def after_initialize
    self.time ||= 7
  end
end
