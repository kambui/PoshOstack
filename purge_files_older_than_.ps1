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
param (
	[string]$path,
	[int]$days
)

$root  = $path
$limit = (Get-Date).AddDays($days)

Get-ChildItem $root -Recurse | ? {-not $_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item