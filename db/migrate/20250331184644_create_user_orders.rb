class CreateUserOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :user_orders do |t|
      t.timestamps
    end
  end
end
