class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name, null: false
      t.integer :company_id, foreign_key: true
      t.boolean :active
      t.timestamps
    end
  end
end
