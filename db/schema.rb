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

ActiveRecord::Schema.define(version: 20170731132056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "country"
    t.string "city"
    t.string "district"
    t.string "ward"
    t.string "street"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "author_id", null: false
    t.index ["book_id", "author_id"], name: "index_authors_books_on_book_id_and_author_id"
  end

  create_table "book_shelves", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "shelf_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bit "active", limit: 1
    t.index ["book_id"], name: "index_book_shelves_on_book_id"
    t.index ["shelf_id"], name: "index_book_shelves_on_shelf_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "publisher"
    t.string "published_date"
    t.string "book_type"
    t.string "editor"
    t.string "isbn"
    t.integer "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover"
  end

  create_table "quotes", force: :cascade do |t|
    t.bigint "book_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_quotes_on_book_id"
  end

  create_table "shelves", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shelves_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "owner_id"
    t.bigint "borrower_id"
    t.datetime "from"
    t.datetime "to"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_transactions_on_book_id"
    t.index ["borrower_id"], name: "index_transactions_on_borrower_id"
    t.index ["owner_id"], name: "index_transactions_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "book_shelves", "books"
  add_foreign_key "book_shelves", "shelves"
  add_foreign_key "quotes", "books"
  add_foreign_key "transactions", "books"
end
