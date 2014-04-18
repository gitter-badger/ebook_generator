class CreateEbookGeneratorTables < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :ebooks, id: :uuid, default: "uuid_generate_v4()" do |t|
      t.string    "title",      null: false
      t.string    "creator"
      t.string    "language",   limit: 2
      t.string    "contributor"
      t.text      "description"
      t.string    "publisher"
      t.text      "rights"
      t.string    "subject"
      t.datetime  "created_at"
      t.datetime  "updated_at"
    end

    create_table "sections", force: true do |t|
      t.string   "title",      null: false
      t.text     "content",    null: false
      t.uuid     "ebook_id",   null: false
      t.integer  "position",   null: false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "sections", ["ebook_id"], name: "index_sections_on_ebook_id", using: :btree
    add_index "sections", ["position"], name: "index_sections_on_position", using: :btree
  end
end