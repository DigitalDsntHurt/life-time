class CreateCustomDates < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_dates do |t|
      t.date :bday
      t.date :dday

      t.timestamps
    end
  end
end
