class CreateApods < ActiveRecord::Migration[6.1]
  def change
    create_table :apods do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
