require 'spec_helper'

describe CarrierWave::Uploader::Base do
  it 'should define azure as a storage engine' do
    expect(described_class.storage_engines[:azure_rm]).to eq 'CarrierWave::Storage::AzureRM'
  end

  it 'should define azure options' do
    is_expected.to respond_to(:azure_storage_account_name)
    is_expected.to respond_to(:azure_storage_access_key)
    is_expected.to respond_to(:azure_storage_blob_host)
    is_expected.to respond_to(:azure_storage_dns_suffix)
    is_expected.to respond_to(:azure_container)
    is_expected.to respond_to(:auto_sign_urls)
    is_expected.to respond_to(:token_expire_after)
  end

  it 'should have public_access_level blob by default' do
    expect(described_class.public_access_level).to eq 'blob'
  end

  it 'should have set token_expire_after to 30 minutes' do
    expect(described_class.token_expire_after).to eq 30*60
  end
end
