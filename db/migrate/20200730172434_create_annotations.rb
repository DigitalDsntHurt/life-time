class CreateAnnotations < ActiveRecord::Migration[6.0]
  def change
    create_table :annotations do |t|
      t.integer :start_date_id
      t.integer :end_date_id
      t.text :annotation
      t.string :color

      t.timestamps
    end
  end
end
