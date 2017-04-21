class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.string :status
      t.string :user_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end