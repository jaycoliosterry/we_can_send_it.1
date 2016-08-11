class CreatePrintjobs < ActiveRecord::Migration
  def change
    create_table :printjobs do |t|
      t.references :company, index: true

      t.timestamps
    end
  end
end
