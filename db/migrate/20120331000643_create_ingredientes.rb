class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.references :categoria_ingredientes
      t.string "nombre", :limit => 80
      t.string "umedida", :limit => 5
      t.timestamps
    end
    add_index("ingredientes","categoria_ingredientes_id")
  end
end
