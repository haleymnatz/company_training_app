class Company < ApplicationRecord
  PLAN_LEVEL_OPTIONS = %w(legacy custom basic plus growth enterprise)

  has_many :lessons

  validates :name, length: { in: 3..254 }
  validates :plan_level, inclusion: PLAN_LEVEL_OPTIONS
end
