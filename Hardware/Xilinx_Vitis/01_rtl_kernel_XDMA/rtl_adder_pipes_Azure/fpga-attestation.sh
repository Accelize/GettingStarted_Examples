#!/usr/bin/env bash

## ADAPT THE FOLLOWING LINES TO YOUR ACCOUNT
storage_acct_name=
blob_container=

## DO NOT CHANGE THE FOLLOWING LINES
netlist_filename=$1
netlist_bname="$(basename -- $netlist_filename)"
expiration_date=$(date +'%Y-%m-%dT%H:%MZ' -d "$(date) + 1 day")
attxclbin=${1##*/}
attxclbin=${attxclbin%.*}

echo "attxclbin         = $attxclbin"
echo "storage_acct_name = $storage_acct_name"
echo "blob_container    = $blob_container"
echo "netlist_filename  = $netlist_filename"
echo "netlist_bname     = $netlist_bname"
echo "expiration_date   = $expiration_date"

echo "Uploading the file..."
az storage blob upload --account-name $storage_acct_name --container-name $blob_container --file $netlist_filename --name $netlist_bname

echo "Running FPGA Bitstream Attestation..."
sas_token=`az storage container generate-sas --account-name $storage_acct_name --name $blob_container --https-only --permissions rwc --expiry $expiration_date -o tsv`

./validate-fpgaimage.sh  --storage-account $storage_acct_name --container  $blob_container  --netlist-name $netlist_bname --blob-container-sas $sas_token

echo "Downloading attested xclbin $attxclbin"
az storage blob download-batch --account-name $storage_acct_name -s $blob_container -d . --pattern ${attxclbin}.azure.xclbin
