class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :isim
      t.decimal :total
      t.decimal :paid
      t.decimal :total
      t.date :date_of_issue
      t.date :payable_date

      t.timestamps
    end
  end
end
