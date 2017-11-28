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

ActiveRecord::Schema.define(version: 20171123001803) do

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoris", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnosticos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "fecha"
    t.string "axilaRectal"
    t.string "presionArterial"
    t.string "pulso"
    t.string "freCardiaca"
    t.string "freRespi"
    t.string "peso"
    t.string "talla"
    t.string "perimeCefalico"
    t.string "masaCorpo"
    t.string "circuAbdomi"
    t.string "estadNutricional"
    t.string "alimentacion"
    t.string "desarrolloMadura"
    t.string "tanner"
    t.string "vacucacionVigente"
    t.string "areaTecEspecialidades"
    t.string "nuevo"
    t.boolean "consultar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ficha_medica_id"
    t.index ["ficha_medica_id"], name: "index_diagnosticos_on_ficha_medica_id"
  end

  create_table "estado_civils", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "estadoCivil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ficha_docs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "motivoConsul"
    t.string "diagnostico"
    t.text "examenFisico"
    t.text "otroDiagnos"
    t.text "tratamiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "diagnostico_id"
    t.index ["diagnostico_id"], name: "index_ficha_docs_on_diagnostico_id"
  end

  create_table "ficha_medicas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "numero"
    t.string "especialidad"
    t.string "nombre"
    t.string "apellido"
    t.integer "edad"
    t.string "nacionalidad"
    t.integer "ci"
    t.boolean "consulta"
    t.date "fechaNacimiento"
    t.string "lugarNacimiento"
    t.integer "telefono"
    t.integer "nCasa"
    t.string "email"
    t.string "direccionActual"
    t.string "departamentoActual"
    t.string "distritoActual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "puesto_salud_id"
    t.bigint "sexo_id"
    t.bigint "estado_civil_id"
    t.bigint "origen_id"
    t.bigint "nivel_academico_id"
    t.bigint "area_id"
    t.bigint "categori_id"
    t.index ["area_id"], name: "index_ficha_medicas_on_area_id"
    t.index ["categori_id"], name: "index_ficha_medicas_on_categori_id"
    t.index ["estado_civil_id"], name: "index_ficha_medicas_on_estado_civil_id"
    t.index ["nivel_academico_id"], name: "index_ficha_medicas_on_nivel_academico_id"
    t.index ["origen_id"], name: "index_ficha_medicas_on_origen_id"
    t.index ["puesto_salud_id"], name: "index_ficha_medicas_on_puesto_salud_id"
    t.index ["sexo_id"], name: "index_ficha_medicas_on_sexo_id"
  end

  create_table "medicamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fechaEntrada"
    t.date "fechaVencimiento"
    t.string "nombreMedi"
    t.text "descripcion"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivel_academicos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nivelAcdemico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "etnia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puesto_saluds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "localidad"
    t.string "distrito"
    t.string "direccion"
    t.string "regionSanitaria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_medicas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "fechaEntrega"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ficha_medica_id"
    t.bigint "medicamento_id"
    t.index ["ficha_medica_id"], name: "index_stock_medicas_on_ficha_medica_id"
    t.index ["medicamento_id"], name: "index_stock_medicas_on_medicamento_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "view_consulta", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
