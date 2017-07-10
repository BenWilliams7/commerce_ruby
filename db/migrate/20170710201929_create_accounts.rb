class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |a|
      a.timestamps
    end

    create_table :orders do |o|
      o.string :status
      o.decimal :total_price
      o.integer :account_id

      o.timestamps
    end

    create_table :order_items do |oi|
      oi.integer :quantity
      oi.integer :product_id
      oi.integer :order_id

      oi.timestamps
    end

    create_table :reviews do |r|
      r.string :author
      r.string :content
      r.integer :rating

      r.timestamps
    end

    create_table :products do |d|
      d.decimal :price
      d.string :name
      d.string :description

      d.timestamps
    end

  end
end
