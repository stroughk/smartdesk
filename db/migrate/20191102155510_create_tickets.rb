class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.boolean "complete", default: false
    end
  end
end
