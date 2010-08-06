class User < ActiveRecord::Base
  validates_uniqueness_of :twitter
  validates_presence_of :twitter
  before_save :check_on_twitter
  
  def check_on_twitter
    fetch_twitter
  end
  
  def avatar_url
    fetch_twitter['profile_image_url']
  end
  
  private
  def fetch_twitter
    @data ||= Twitter.user(twitter)
  end
end
