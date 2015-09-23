<#
.SYNOPSIS
   <A brief description of the script>
.DESCRIPTION
   <A detailed description of the script>
.PARAMETER <paramName>
   <Description of script parameter>
.EXAMPLE
   <An example of using the script>
#>


$request = Invoke-RestMethod -Uri http://192.168.1.150:5000/v2.0/tokens/ -Method POST -Body '{"auth":{"tenantName":"admin", "passwordCredentials": {"username":"admin", "password": "c752acf1f0ef40b0" }}}' -ContentType application/json

$authtoken = $request.access.token.id

$headers = @{}
$headers["X-Auth-Token"] = "$authtoken"

(Invoke-RestMethod -Headers $headers -Uri http://192.168.1.150:8774/v2/eb186d43434f423cb3d36e5ca80f6195/images).images.id	

Invoke-RestMethod -Headers $headers -Uri http://192.168.1.150:8774/v2/024e9921d9064f10bb5e3a37632e81bf