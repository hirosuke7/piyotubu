class CreateHiyokos < ActiveRecord::Migration[5.1]
  def change
    create_table :hiyokos do |t|
      t.string :family_name, null: false, length: { maximum: 20 }
      t.string :given_name,  null: false, length: { maximum: 20 }
      t.string :email,       null: false

      t.timestamps
    end
    add_index :hiyokos, :email, unique: true
  end
end
