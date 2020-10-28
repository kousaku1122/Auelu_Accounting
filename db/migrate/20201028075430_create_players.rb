class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :uni_num
      t.string :name
      t.integer :payment
      t.date :payment_date
      
      t.timestamps
    end
  end
end
