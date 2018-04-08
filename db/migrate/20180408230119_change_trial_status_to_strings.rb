class ChangeTrialStatusToStrings < ActiveRecord::Migration[5.1]
  def change
    change_column :companies, :trial_status, :string
  end
end
