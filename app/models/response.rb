class Response < ActiveRecord::Base
  belongs_to :option
  belongs_to :user

  validates :user, uniqueness: { scope: :option }
end
