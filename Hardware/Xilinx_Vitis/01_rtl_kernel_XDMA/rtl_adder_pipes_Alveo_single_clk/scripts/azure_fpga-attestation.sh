#!/usr/bin/env bash

# Test if Azure Command-Line is installed
which az
if [ $? -ne 0 ]; then
  echo "The Azure CLI is not installed"
  echo "More information here: https://github.com/Accelize/GettingStarted_Examples/blob/master/Cloud_Instructions/Azure_FPGA_Instructions.md"
  exit 1
fi

# Login Azure using Azure CLI
az login --use-device-code

## DO NOT CHANGE
storage_acct_name=$1
blob_container=$2
netlist_filename=$3

netlist_bname="$(basename -- $netlist_filename)"
expiration_date=$(date +'%Y-%m-%dT%H:%MZ' -d "$(date) + 1 day")
attxclbin=${3##*/}
attxclbin=${attxclbin%.*}

echo "attxclbin         = $attxclbin"
echo "storage_acct_name = $storage_acct_name"
echo "blob_container    = $blob_container"
echo "netlist_filename  = $netlist_filename"
echo "netlist_bname     = $netlist_bname"
echo "expiration_date   = $expiration_date"

echo -e "===> Uploading the file..."
az storage blob upload --auth-mode login --account-name $storage_acct_name --container-name $blob_container --file $netlist_filename --name $netlist_bname

echo -e "===> Running FPGA Bitstream Attestation..."
sas_token=`az storage container generate-sas --account-name $storage_acct_name --name $blob_container --https-only --permissions rwc --expiry $expiration_date -o tsv`
./scripts/azure_validate-fpgaimage.sh  --storage-account $storage_acct_name --container  $blob_container  --netlist-name $netlist_bname --blob-container-sas $sas_token

echo -e "===> Downloading attested xclbin $attxclbin"
az storage blob download-batch --auth-mode login --account-name $storage_acct_name -s $blob_container -d . --pattern ${attxclbin}.azure.xclbin
