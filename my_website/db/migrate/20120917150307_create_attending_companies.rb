class CreateAttendingCompanies < ActiveRecord::Migration
  def change
    create_table :attending_companies do |t|
      t.string :name
      t.boolean :day1
      t.boolean :day2
      t.string :specialization

      t.timestamps
    end
  end
end
