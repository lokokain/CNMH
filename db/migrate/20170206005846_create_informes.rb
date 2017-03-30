class CreateInformes < ActiveRecord::Migration[5.0]
  def change
    create_table :informes do |t|
      t.integer :idcaso
      t.date :fecha
      t.string :lugar
      t.text :resumen
      t.date :fechares
      t.text :descripcion
      t.string :entidad
      t.string :pdfreci
      t.boolean :recirespo
      t.date :fechaentre
      t.text :entredescr
      t.string :entidadentre
      t.string :pdfentre
      t.boolean :respondidoentre
      t.text :descripcionob
      t.date :fecha
      t.boolean :cumplido
      t.date :fechaau
      t.text :descrup

      t.timestamps
    end
  end
end
