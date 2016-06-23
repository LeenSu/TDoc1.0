class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.integer :num_expediente
      t.string :asunto
      t.integer :folio
      t.string :ubic_archivo
      t.boolean :rpta
      t.integer :firma
      t.integer :tipo_doc_id
      t.integer :empleado_id

      t.timestamps
    end
  end
end
