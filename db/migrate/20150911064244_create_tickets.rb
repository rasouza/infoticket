class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :titulo
      t.text :descricao
      t.references :user, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
