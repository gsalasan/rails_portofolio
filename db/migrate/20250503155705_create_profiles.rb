class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.text :summary

      t.timestamps
    end
  end
end
