class CreateEducations < ActiveRecord::Migration[8.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :degree
      t.string :field
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
