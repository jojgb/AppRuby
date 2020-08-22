class CreatePendaftarans < ActiveRecord::Migration[6.0]
  def change
    create_table :pendaftarans do |t|
      t.string :nama
      t.string :alamat
      t.string :hobi
      t.string :no_hp

      t.timestamps
    end
  end
end
