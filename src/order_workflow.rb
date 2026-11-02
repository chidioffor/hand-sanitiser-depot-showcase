# Public, standalone illustration of a commerce order lifecycle.
# It performs no network, database, or payment activity.

Order = Struct.new(:reference, :state, keyword_init: true)

ALLOWED_TRANSITIONS = {
  "basket" => ["pending_payment"],
  "pending_payment" => ["authorised", "payment_failed"],
  "authorised" => ["ready_to_fulfil"],
  "ready_to_fulfil" => ["fulfilled"]
}.freeze

def transition(order, next_state)
  allowed = ALLOWED_TRANSITIONS.fetch(order.state, [])
  raise "Cannot move #{order.state} to #{next_state}" unless allowed.include?(next_state)

  Order.new(reference: order.reference, state: next_state)
end

order = Order.new(reference: "DEMO-ORDER-001", state: "basket")
%w[pending_payment authorised ready_to_fulfil].each { |next_state| order = transition(order, next_state) }

puts "#{order.reference}: #{order.state}"
