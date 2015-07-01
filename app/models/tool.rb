class Tool < ActiveRecord::Base
  belongs_to :kit
  validates :name, presence: true
  validates :description, presence: true
end
