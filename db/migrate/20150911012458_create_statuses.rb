class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :nome
    end
  end
end
