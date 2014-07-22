class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :total
      t.decimal :paid
      t.date :date_of_issue
      t.date :payable_date
      t.string :colle

      t.timestamps
    end
  end
end
