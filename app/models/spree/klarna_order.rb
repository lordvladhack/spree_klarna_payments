module Spree
    class KlarnaOrder < Spree::Base
        belongs_to: spree_order, class_name: 'Spree::Order', foreign_key: 'spree_order_id'
    end
end