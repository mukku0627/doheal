class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account_id
      t.string :name
      t.string :comment
      t.boolean :delete_flag
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
