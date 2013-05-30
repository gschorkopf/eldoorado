class AddCompanyIdToEntrants < ActiveRecord::Migration
  def change
    add_column :entrants, :company_id, :integer
  end
end
