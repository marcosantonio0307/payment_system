require 'charge'

class PaymentSystem
  def self.generate_charges(json)
  	charges = []
  	json.each do |charge|
  		charges << Charge.new(token: charge[:token], expirate_at: charge[:expirate_at], charge_value: charge[:charge_value],
  													payment_type: charge[:payment_type])
  	end
  	File.open("data/to_process/#{Time.now.strftime('%Y%m%d')}_PIX_EMISSAO.txt", 'w+') do |f|
  		charges.each do |charge|
  			f.print "B_#{charge.token}_#{charge.expirate_at}_        _#{'%010d' % charge.charge_value}_#{charge.status}\n"
  		end
  	end
  end
end
