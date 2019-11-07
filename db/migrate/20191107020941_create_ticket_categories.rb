class CreateTicketCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_categories do |t|
      t.integer :ticket_id
      t.integer :category_id
    end
  end
end
