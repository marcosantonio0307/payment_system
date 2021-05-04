describe 'charges' do
  it 'Generate archive from charges' do
  	json = [
  		{token: 'ABC123456778', expirate_at: '20210422', charge_value: 5000, payment_type: 'pix'},
  		{token: 'ABC123456779', expirate_at: '20210422', charge_value: 6000, payment_type: 'pix'},
  		{token: 'ABC123456780', expirate_at: '20210422', charge_value: 9000, payment_type: 'pix'}
  	]
    PaymentSystem.generate_charges(json)

    expect(File.read("data/to_process/#{Time.now.strftime('%Y%m%d')}_PIX_EMISSAO.txt")).
    to include('B_ABC123456778_20210422_        _0000005000_01',
               'B_ABC123456779_20210422_        _0000006000_01',
               'B_ABC123456780_20210422_        _0000009000_01',)
  end
end
