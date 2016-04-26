class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :body
      t.date :date
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
