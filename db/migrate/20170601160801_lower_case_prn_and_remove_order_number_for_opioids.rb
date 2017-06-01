class LowerCasePrnAndRemoveOrderNumberForOpioids < ActiveRecord::Migration[5.1]
  def change
    rename_column :daily_opioids, :PRN, :prn
    remove_column :daily_opioids, :order_number
  end
end
