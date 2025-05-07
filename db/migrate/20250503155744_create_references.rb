class CreateReferences < ActiveRecord::Migration[8.0]
  def change
    create_table :references do |t|
      t.string :name
      t.string :position
      t.string :email

      t.timestamps
    end
  end
end
