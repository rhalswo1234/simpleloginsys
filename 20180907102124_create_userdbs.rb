class CreateUserdbs < ActiveRecord::Migration[5.2]
  def change
    create_table :userdbs do |t|
      t.string :name , unique: true
      t.string :password_digest

      t.timestamps
    end
  end
end
