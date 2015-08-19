class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :comment
      t.boolean :delete_flag
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
