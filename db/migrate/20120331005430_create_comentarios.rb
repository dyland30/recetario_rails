class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :platos
      t.references :usuarios
      t.string "comentario"
      t.timestamps
    end
    add_index :comentarios, ['platos_id','usuarios_id']
  end
end
