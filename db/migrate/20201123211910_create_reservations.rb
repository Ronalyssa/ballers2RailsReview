class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :baller_id
      t.integer :vip_lounge_id

      t.timestamps
    end
  end
end
