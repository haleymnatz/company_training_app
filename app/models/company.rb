class Company < ApplicationRecord
  PLAN_LEVEL_OPTIONS = %w(legacy custom basic plus growth enterprise)

  has_many :lessons

  validates :name, length: { in: 3..254 }
  validates :plan_level, inclusion: PLAN_LEVEL_OPTIONS

  def self.modern_plan_level_companies
    Company.where.not(plan_level: ['legacy', 'custom'])
  end
end
