class CreateTableUser < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
