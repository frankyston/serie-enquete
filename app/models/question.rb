class Question < ApplicationRecord
  belongs_to :survey
  has_many :answer, :dependent => :destroy
end
