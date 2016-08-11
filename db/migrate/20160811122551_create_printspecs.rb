class CreatePrintspecs < ActiveRecord::Migration
  def change
    create_table :printspecs do |t|

      t.timestamps
    end
  end
end
