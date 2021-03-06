class UpdateTenantDivisibleOnExistingRows < ActiveRecord::Migration[4.2]
  class Tenant < ActiveRecord::Base; end

  def up
    say_with_time("marking root tenant divisible") do
      Tenant.where(:divisible => nil).update_all(:divisible => true)
    end
  end
end
