class User < ActiveRecord::Base
  belongs_to :role
  has_many :responses
  has_many :options, through: :responses

  validates :email, uniqueness: true
  #validates_presence_of :gender
  #validates gender, presence: :true
  validates :gender, inclusion: { in: %w(M F), message: "%{value} is not valid gender"}
  validates :age, length: { is: 2 }
  #before_save :simple_callback
  #def simple_callback
    #puts "In User model"
    #self.name = name.downcase.titleize
  #end
  #after_save :after_save
  #def after_save
  #end
end
