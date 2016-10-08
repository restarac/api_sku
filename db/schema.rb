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

ActiveRecord::Schema.define(version: 20161007190152) do

  create_table "dimensaos", force: :cascade do |t|
    t.integer  "altura"
    t.integer  "largura"
    t.integer  "comprimento"
    t.integer  "peso"
    t.integer  "skus_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["skus_id"], name: "index_dimensaos_on_skus_id"
  end

  create_table "disponibilidades", force: :cascade do |t|
    t.decimal  "preco",      precision: 10, scale: 2
    t.decimal  "precoDe",    precision: 10, scale: 2
    t.integer  "disponivel"
    t.integer  "skus_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["skus_id"], name: "index_disponibilidades_on_skus_id"
  end

  create_table "imagems", force: :cascade do |t|
    t.string   "menor",      limit: 300
    t.string   "maior",      limit: 300
    t.string   "zoom",       limit: 300
    t.integer  "skus_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["skus_id"], name: "index_imagems_on_skus_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome",                   limit: 200
    t.string   "nomeReduzido",           limit: 50
    t.string   "palavrasChave",          limit: 300
    t.text     "especificacoesTecnicas"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "skus", force: :cascade do |t|
    t.string   "nome",         limit: 200
    t.string   "nomeReduzido", limit: 50
    t.integer  "produtos_id"
    t.boolean  "foraDeLinha"
    t.string   "url",          limit: 300
    t.string   "modelo",       limit: 100
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["produtos_id"], name: "index_skus_on_produtos_id"
  end

end
