# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SuppliersExtension < Spree::Extension
  version "0.1"
  description "Describe your extension here"
  url "Adds the ability to set a supplier for individual products."

  # Please use supplier/config/routes.rb instead for extension routes.

  def self.require_gems(config)
    config.gem "formtastic"
  end
  
  def activate
    
    Product.class_eval do
      belongs_to :supplier
    end

  end
end
