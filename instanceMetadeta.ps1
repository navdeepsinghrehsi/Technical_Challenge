
#Run below command inside Azure VM
$metadata = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64

#Convert metadata into JSON

$metadataJSON = ConvertFrom-Json $metadataget
