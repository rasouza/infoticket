class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :maquina_id
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
  end
end
