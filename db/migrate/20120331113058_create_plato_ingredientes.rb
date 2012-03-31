class CreatePlatoIngredientes < ActiveRecord::Migration
  def change
    create_table :plato_ingredientes do |t|
      t.references :platos
      t.references :ingredientes
      t.decimal "cantidad"
      t.boolean "flg_principal"
      t.timestamps
    end
    add_index :plato_ingredientes, ['platos_id','ingredientes_id']
  end
end
