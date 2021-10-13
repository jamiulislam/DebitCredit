class AddCompanyIdToTranjections < ActiveRecord::Migration[6.1]
  def change
    add_column :tranjections, :company_id, :integer
  end
end
