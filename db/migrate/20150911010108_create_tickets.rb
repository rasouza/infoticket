class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :status_id
      t.string :titulo
      t.text :descricao

      t.timestamps null: false
    end
  end
end
