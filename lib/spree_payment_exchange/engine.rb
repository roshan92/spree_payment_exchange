module SpreePaymentExchange
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace SpreePaymentExchange
    engine_name 'spree_payment_exchange'

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    initializer "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods += [
          Spree::PaymentMethod::Exchange
      ]
    end

    config.to_prepare &method(:activate).to_proc
  end
end