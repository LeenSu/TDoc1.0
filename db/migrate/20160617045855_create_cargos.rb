class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :nombre
      t.string :titulo
      t.integer :area_id

      t.timestamps
    end
  end
end
