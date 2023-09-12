class CreateStoks < ActiveRecord::Migration[7.0]
  def change
    create_table :stoks do |t|
      t.string :judul
      t.text :deskripsi
      
      t.timestamps
    end
  end
end
