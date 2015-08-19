class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer :user_id
      t.string :comment
      t.datetime :trace_at
      t.integer :status
      t.boolean :delete_flag
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
