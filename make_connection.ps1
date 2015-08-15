<#
.SYNOPSIS
   <A brief description of the script>
.DESCRIPTION
   <A detailed description of the script>
.PARAMETER <paramName>
   <Description of script parameter>
.EXAMPLE
   <An example of using the script>
   
   
   $ curl -s -X POST http://8.21.28.222:5000/v2.0/tokens \
            -H "Content-Type: application/json" \
            -d '{"auth": {"tenantName": "'"$OS_TENANT_NAME"'", "passwordCredentials":
            {"username": "'"$OS_USERNAME"'", "password": "'"$OS_PASSWORD"'"}}}' \
            | python -m json.tool
   
#>
$headers = @{}
$headers["X-Auth-Token"] = "21c8c8d5fe6d4264af85e2861e9f0fe8"

$postParams = @{username='admin';password='c752acf1f0ef40b0'}

#$request = Invoke-RestMethod -Uri http://192.168.1.150:5000/v2.0/tokens/ -Method POST -Body '{"auth":{"tenantName":"admin", "passwordCredentials": {"username":"admin", "password": "c752acf1f0ef40b0" }}}' -ContentType application/json
#$request |ConvertTo-Json

#Invoke-WebRequest -Uri http://192.168.1.150:5000/v2.0/tokens/ -Method POST -Body $postParams -Headers $headers

(Invoke-RestMethod -Headers $headers -Uri http://192.168.1.150:8774/v2/eb186d43434f423cb3d36e5ca80f6195/images).images.links