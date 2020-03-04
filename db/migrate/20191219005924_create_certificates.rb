class CreateCertificates < ActiveRecord::Migration[6.0]
  def change
    create_table :certificates do |t|

      t.integer :patient_id
      t.integer :doctor_id
      t.string :income_date
      t.string :discharge_date
    end
  end
end
