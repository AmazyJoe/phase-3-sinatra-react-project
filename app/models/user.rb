class User < ActiveRecord::Base
  has_many :raw_materials
  has_many :feedbacks
end

