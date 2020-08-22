class CreateKursus < ActiveRecord::Migration[6.0]
  def change
    create_table :kursus do |t|
      t.string :nama_kursus
      t.integer :harga_kursus

      t.timestamps
    end
  end
end
