class User < ApplicationRecord
  belongs_to :project
  has_many :messages
end
