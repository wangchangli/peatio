def login identity, otp='', password='Password123'
  visit root_path
  
  click_on I18n.t('header.signin')

  within 'form#new_identity' do
    fill_in 'identity_email', with: identity.email
    fill_in 'identity_password', with: password
    click_on I18n.t('header.signin')
  end

  unless otp.blank?
    fill_in 'identity_otp', with: otp
    click_on I18n.t('helpers.submit.identity.verify')
  end
end
