class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.string :location
      t.float :temperature
      t.float :humidity
      t.float :windspeed

      t.timestamps
    end
  end
end
