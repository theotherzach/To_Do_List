class UpdateUsers < ActiveRecord::Migration
  def change
   change_table :users do |t|
     t.remove :uid
     t.string :uid
   end

   change_table :items do |t|
     t.remove :uid
   end
  end
end
