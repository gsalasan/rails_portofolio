class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :impact
      t.text :technologies

      t.timestamps
    end
  end
end
