class CreatePdfs < ActiveRecord::Migration[6.1]
  def change
    create_table :pdfs do |t|
      t.string :name
      t.string :description
      t.string :pdfdoc
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
