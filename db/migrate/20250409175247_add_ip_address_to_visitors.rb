class AddIpAddressToVisitors < ActiveRecord::Migration[8.0]
  def change
    add_column :visitors, :ip_address, :string
  end
end
