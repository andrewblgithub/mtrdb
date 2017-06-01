class RenameCapsToLowercase < ActiveRecord::Migration[5.1]
  def change
    rename_column :patients, :MTID, :mtid
    rename_column :patients, :CAM, :cam
    rename_column :patients, :CVA, :cva
  end
end
