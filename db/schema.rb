# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170327014214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archivos", force: :cascade do |t|
    t.integer  "idinforme"
    t.string   "descripcion"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "casos", force: :cascade do |t|
    t.integer  "radicado"
    t.text     "nombreimplicado"
    t.string   "tribunal"
    t.string   "estado"
    t.string   "sala"
    t.string   "tipodecision"
    t.boolean  "segundainstancia"
    t.string   "magistradoponente"
    t.string   "bloque"
    t.string   "lugardeinfluencia"
    t.string   "lugarexpedicion"
    t.date     "fechaexpedicion"
    t.string   "estadoprovidencia"
    t.boolean  "secomunico"
    t.date     "fechacomunicacion"
    t.text     "delimitaciondeapartados"
    t.text     "ordenexhorto"
    t.text     "recomendaciones"
    t.text     "direcciongrupo"
    t.text     "tiempodeterminado"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "informes", force: :cascade do |t|
    t.integer  "idcaso"
    t.date     "fecha"
    t.string   "lugar"
    t.text     "resumen"
    t.date     "fechares"
    t.text     "descripcion"
    t.string   "entidad"
    t.string   "pdfreci"
    t.boolean  "recirespo"
    t.date     "fechaentre"
    t.text     "entredescr"
    t.string   "entidadentre"
    t.string   "pdfentre"
    t.boolean  "respondidoentre"
    t.text     "descripcionob"
    t.boolean  "cumplido"
    t.date     "fechaau"
    t.text     "descrup"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "usuario"
    t.string   "contraseña"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.string   "cargo"
    t.string   "tpusu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
