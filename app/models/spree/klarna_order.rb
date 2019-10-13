module Spree
    class KlarnaOrder < Spree::Base
        belongs_to :spree_order, class_name: 'Spree::Order'
    end
end