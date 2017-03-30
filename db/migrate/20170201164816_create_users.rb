class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :usuario
      t.string :contraseña
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :cargo
      t.string :tpusu

      t.timestamps
    end
  end
end
