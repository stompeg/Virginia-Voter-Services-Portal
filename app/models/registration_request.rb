class RegistrationRequest < ActiveRecord::Base

  include Concern::SerializedAttrs

  SERVICE_BRANCHES = [ 'Army', 'Air Force', 'Marines', 'Merchant Marine', 'Navy' ]

  # Eligibility
  serialized_attr :citizen, :old_enough, :residence

  serialized_attr :outside_type
  serialized_attr :outside_active_service_branch, :outside_active_service_id, :outside_active_rank
  serialized_attr :outside_spouse_service_branch, :outside_spouse_service_id, :outside_spouse_rank

  serialized_attr :rights_revoked, :rights_revoked_reason
  serialized_attr :rights_restored, :rights_restored_on
  serialized_attr :felony_state

  # Identity
  serialized_attr :first_name, :middle_name, :last_name, :suffix
  serialized_attr :dob, :gender, :ssn, :no_ssn
  serialized_attr :phone, :email

  # Contact info
  serialized_attr :vvr_county_or_city, :vvr_street_number, :vvr_street_name, :vvr_street_type, :vvr_street_suffix
  serialized_attr :vvr_town_or_city, :vvr_zip5, :vvr_zip4
  serialized_attr :vvr_is_rural, :vvr_rural
  serialized_attr :vvr_uocava_residence_available, :vvr_uocava_residence_unavailable, :vvr_uocava_residence_unavailable_since
  serialized_attr :raa_address, :raa_address_2, :raa_city, :raa_city_2, :raa_state, :raa_postal_code, :raa_country
  serialized_attr :mau_address, :mau_address_2, :mau_city, :mau_city_2, :mau_state, :mau_postal_code, :mau_country, :mau_type
  serialized_attr :ma_address,  :ma_address_2,  :ma_city, :ma_state, :ma_zip5, :ma_zip4, :ma_is_rural, :ma_rural, :ma_other
  serialized_attr :apo_address, :apo_1, :apo_2, :apo_zip5
  serialized_attr :is_confidential_address, :ca_type
  serialized_attr :has_existing_reg, :er_cancel
  serialized_attr :er_address,  :er_address_2, :er_city, :er_state, :er_zip5, :er_zip4, :er_is_rural, :er_rural, :er_other
  serialized_attr :be_official

  # Complete Registration
  serialized_attr :information_correct, :privacy_agree
end
