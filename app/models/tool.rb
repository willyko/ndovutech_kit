class Tool < ActiveRecord::Base
  belongs_to :kit
  validates :name, presence: true
  validates :description, presence: true

  after_create :set_embedly_data

  def set_embedly_data
    if :url
      embedly_api = Embedly::API.new :key => ENV['embedly_api_key'],
        :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)'
      obj = embedly_api.extract :url => self.url
      o = obj.first
      image = o.images.first
      title = o.title
      description = o.description
      update_attribute(:thumbnail_url, image['url'])
      update_attribute(:embedly_title, title)
      update_attribute(:embedly_description, description)
    end
  end
end
