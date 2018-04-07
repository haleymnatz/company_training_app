class Lesson < ApplicationRecord
  belongs_to :company
  
  validates :name, presence: true
  validates :name, format: { with: /\A[[:alnum:]]+\Z/,
    message: "Letters and numbers only" }
end
