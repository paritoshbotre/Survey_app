class User < ActiveRecord::Base
  belongs_to :role
  has_many :responses
  has_many :options, through: :responses

  validates_presence_of :gender
  #validates gender, presence: :true
  validates :gender, inclusion: { in: ["M","F"], message: "%{value} is not valid gender"}
  validates :age, length: { in: 14..20}
end
