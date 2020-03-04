class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|

      t.string :name
      t.string :phone
      t.date :birth_date
      t.string :diagnosis
    end
  end
end
