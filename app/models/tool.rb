class Tool < ActiveRecord::Base
  belongs_to :kit
  validates :name, presence: true
  validates :description, presence: true

  after_create :set_thumbnail_url

  def set_thumbnail_url
    if :url
      embedly_api = Embedly::API.new :key => ENV['embedly_api_key'],
        :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)'
      obj = embedly_api.extract :url => self.url
      o = obj.first
      image = o.images.first
      update_attribute(:thumbnail_url, image['url'])
    end
  end
end
