class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :nombre
      t.string :titulo
      t.integer :sede_id

      t.timestamps
    end
  end
end
