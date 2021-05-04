require 'spec_helper'

describe 'Charges' do
  it 'create' do
    charge = Charge.new(token: 'ABC123456778', expirate_at: '20210422', charge_value: 50, payment_type: 'pix', status: '01')

    expect(charge.token).to eq('ABC123456778')
    expect(charge.expirate_at).to eq('20210422')
    expect(charge.charge_value).to eq(50)
    expect(charge.payment_type).to eq('pix')
    expect(charge.status).to eq('01')
  end
end