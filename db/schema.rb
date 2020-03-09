# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_09_211624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookclubs", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.integer "capacity"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "description"
    t.float "longitude"
    t.float "latitude"
    t.index ["user_id"], name: "index_bookclubs_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.text "description"
    t.string "genre"
    t.string "isbn"
    t.string "author_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.boolean "hidden", default: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "swap_id"
    t.index ["swap_id"], name: "index_messages_on_swap_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "swaps", force: :cascade do |t|
    t.integer "book_1_id"
    t.integer "book_2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "user_2_id", null: false
    t.string "status", default: "pending"
    t.index ["user_2_id"], name: "index_swaps_on_user_2_id"
    t.index ["user_id"], name: "index_swaps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
    t.string "first_name"
    t.string "last_name"
    t.float "latitude"
    t.float "longitude"
    t.bigint "bookclub_id"
    t.index ["bookclub_id"], name: "index_users_on_bookclub_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookclubs", "users"
  add_foreign_key "books", "users"
  add_foreign_key "messages", "swaps"
  add_foreign_key "messages", "users"
  add_foreign_key "swaps", "users"
  add_foreign_key "swaps", "users", column: "user_2_id"
  add_foreign_key "users", "bookclubs"
end
