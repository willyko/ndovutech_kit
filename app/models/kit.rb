class Kit < ActiveRecord::Base
  has_many :tools, dependent: :destroy
  validates :title, presence: true
  validates :mission, presence: true
end
