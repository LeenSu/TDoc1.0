class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|
      t.string :remitente
      t.string :destinatario
      t.text :descripcion
      t.integer :empleado_id
      t.integer :tipo_oper_id
      t.integer :documento_id

      t.timestamps
    end
  end
end
