class CreateArchivos < ActiveRecord::Migration[5.0]
  def change
    create_table :archivos do |t|
      t.integer :idinforme
      t.string :descripcion
      t.string :title

      t.timestamps
    end
  end
end
