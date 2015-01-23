class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :options, dependent: :destroy
  validates :description, presence: true, length: { maximum: 50 }
end
