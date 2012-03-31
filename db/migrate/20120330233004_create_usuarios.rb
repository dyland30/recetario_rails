class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string "login", :limit =>16,:null=>false
      t.string "nombre", :limit =>25
      t.string "apellido",:limit=>30
      t.string "email", :limit =>60
      t.integer "puntaje"
      t.timestamps
    end
    add_index("usuarios","email")
  end
end
