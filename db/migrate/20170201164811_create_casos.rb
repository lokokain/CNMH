class CreateCasos < ActiveRecord::Migration[5.0]
  def change
    create_table :casos do |t|
      
      t.integer :radicado
      t.text :nombreimplicado
      t.string :tribunal
      t.string :estado
      t.string :sala
      t.string :tipodecision
      t.boolean :segundainstancia
      t.string :magistradoponente
      t.string :bloque
      t.string :lugardeinfluencia
      t.string :lugarexpedicion
      t.date :fechaexpedicion
      t.string :estadoprovidencia
      t.boolean :secomunico
      t.date :fechacomunicacion
      t.text :delimitaciondeapartados
      t.text :ordenexhorto
      t.text :recomendaciones
      t.text :direcciongrupo
      t.text :tiempodeterminado
     
      t.timestamps
    end
  end
end
