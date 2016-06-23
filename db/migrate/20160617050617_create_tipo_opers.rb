class CreateTipoOpers < ActiveRecord::Migration
  def change
    create_table :tipo_opers do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
