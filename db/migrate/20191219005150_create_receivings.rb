class CreateReceivings < ActiveRecord::Migration[6.0]
  def change
    create_table :receivings do |t|

      t.string :date
      t.string :time
      t.integer :patient_id
      t.integer :doctor_id
    end
  end
end
