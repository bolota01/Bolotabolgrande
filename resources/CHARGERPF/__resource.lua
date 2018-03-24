resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'CHARGERPF/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'CHARGERPF/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'CHARGERPF/carvariations.meta'


files {
  'CHARGERPF/handling.meta',
  'CHARGERPF/vehicles.meta',
  'CHARGERPF/carvariations.meta',

}

client_script 'vehicle_names.lua'
