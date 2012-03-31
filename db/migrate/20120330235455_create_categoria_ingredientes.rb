class CreateCategoriaIngredientes < ActiveRecord::Migration
  def change
    create_table :categoria_ingredientes do |t|
      t.string "nombre", :limit =>100
      t.string "imagen", :limit =>20
      t.timestamps
    end
  end
end
