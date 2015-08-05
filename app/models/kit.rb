class Kit < ActiveRecord::Base
  belongs_to :user
  has_many :tools, dependent: :destroy
  validates :title, presence: true
  validates :mission, presence: true
end
