class AddDelayToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :delay, :text
  end
end
