class AddUserIdToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :users_id, :integer
  end
end
