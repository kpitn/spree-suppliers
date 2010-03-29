class Admin::SuppliersController < Admin::BaseController
  resource_controller

  update.response do |wants|
    wants.html { redirect_to collection_url }
  end
 
  create.response do |wants|
    wants.html { redirect_to collection_url }
  end

  update.after do
    Rails.cache.delete('suppliers')
  end

  create.after do
    Rails.cache.delete('suppliers')
  end

  destroy.success.wants.js { render_js_for_destroy }

end