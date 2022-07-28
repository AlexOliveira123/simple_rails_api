class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.timestamps
    end
  end
end