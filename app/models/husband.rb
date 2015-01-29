class Husband < ActiveRecord::Base
  has_one :wife
  #has_many :wifes
end
