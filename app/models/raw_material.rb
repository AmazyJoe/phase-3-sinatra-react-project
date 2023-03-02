class RawMaterial < ActiveRecord::Base
  belongs_to :user
  has_many :feedbacks
end

