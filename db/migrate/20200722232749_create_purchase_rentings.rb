class CreatePurchaseRentings < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_rentings do |t|
      t.string :status
      t.integer :quantity
      t.decimal :price
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
