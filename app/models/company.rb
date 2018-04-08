class Company < ApplicationRecord
  PLAN_LEVEL_OPTIONS = %w(legacy custom basic plus growth enterprise)
  TRIAL_STATUS_OPTIONS = %w(active completed unused)
  # I changed how I implemented this because I was confused by the instructions.
  # This is how I originally planned to implement trial status, but
  # I think I read into the instructions too much!

  has_many :lessons

  validates :name, length: { in: 3..254 }
  validates :plan_level, inclusion: PLAN_LEVEL_OPTIONS
  validates :trial_status, inclusion: TRIAL_STATUS_OPTIONS

  def self.modern_plan_level_companies
    Company.where.not(plan_level: ['legacy', 'custom'])
  end

  def self.not_actively_trialing
    Company.where.not(trial_status: 'active')
  end
end
