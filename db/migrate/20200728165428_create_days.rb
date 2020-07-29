class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.date :date
      t.integer :year
      t.integer :month
      t.integer :week

      t.timestamps
    end
  end
end
