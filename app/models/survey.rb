class Survey < ActiveRecord::Base

  #scope :created_today -> { |d| where("date(create_at) = d")}
  has_many :questions, dependent: :destroy
  validates :name, presence: true
  before_save :check_name_of_survey, unless: :name_nil?

  def name_nil?
    puts "In name_nil"
    self.name.empty?
    p self.name
  end

  def check_name_of_survey
    puts "In Survey model capitalized"
    self.name = name.upcase
  end
end
