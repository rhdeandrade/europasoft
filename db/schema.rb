# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160824002847) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf_cnpj"
    t.string   "rua"
    t.string   "numero"
    t.string   "cep"
    t.string   "bairro"
    t.string   "telefone"
    t.string   "celular"
    t.string   "telefone_comercial"
    t.date     "data_nascimento"
    t.string   "rg"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "tipo"
    t.integer  "vencimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "preco"
  end

  create_table "produtos_clientes", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "produto_id"
    t.date     "data_compra"
    t.date     "data_ultima_troca"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "produtos_clientes", ["cliente_id"], name: "index_produtos_clientes_on_cliente_id"
  add_index "produtos_clientes", ["produto_id"], name: "index_produtos_clientes_on_produto_id"

  create_table "relacao_produtos", force: :cascade do |t|
    t.integer  "produto_id"
    t.integer  "camara_troca_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "relacao_produtos", ["produto_id"], name: "index_relacao_produtos_on_produto_id"

  create_table "vendas", force: :cascade do |t|
    t.date     "data"
    t.integer  "cliente_id"
    t.integer  "vendedor_id"
    t.float    "valor_total"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "troca_camara"
  end

  add_index "vendas", ["cliente_id"], name: "index_vendas_on_cliente_id"
  add_index "vendas", ["vendedor_id"], name: "index_vendas_on_vendedor_id"

  create_table "vendas_produtos", force: :cascade do |t|
    t.integer  "produto_id"
    t.integer  "venda_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vendas_produtos", ["produto_id"], name: "index_vendas_produtos_on_produto_id"
  add_index "vendas_produtos", ["venda_id"], name: "index_vendas_produtos_on_venda_id"

  create_table "vendedors", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.boolean  "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
