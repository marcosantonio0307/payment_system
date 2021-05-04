class Charge
  attr_accessor :token, :expirate_at, :charge_value, :payment_type, :status

  def initialize(token:, expirate_at:, charge_value:, payment_type:, status: '01')
  	@token = token
  	@expirate_at = expirate_at
  	@charge_value = charge_value
  	@status = status
  	@payment_type = payment_type
  end
end