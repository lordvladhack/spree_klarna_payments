class CreateSpreeKlarnaOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_klarna_orders do |t|
      t.belongs_to :spree_order, index: { unique: true }, foreign_key: true
      t.integer :spree_order_id
      t.string :klarna_order_id
      t.string :klarna_order_state
      t.text :klarna_session_id
      t.text :klarna_client_token
      t.datetime :klarna_session_expires_at
    end
    add_index :spree_klarna_orders, :klarna_order_id
    add_index :spree_klarna_orders, :spree_order_id
  end
end
