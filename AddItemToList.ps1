trap [Exception] {
	write-error $("TRAPPED: " + $_)
	exit 1
	}

$OutputFileName = $args[0]
$ItemToAdd = $args[1]
$Path_32 = "C:\Program Files (x86)\LogRhythm\LogRhythm Job Manager\config\list_import\"
$Path_64 = "C:\Program Files\LogRhythm\LogRhythm Job Manager\config\list_import\"
if ((Test-Path -path $Path_32)){
	$FilePath = $Path_32 + $OutputFileName

	Out-File -FilePath $FilePath -InputObject $ItemToAdd
}
if ((Test-Path -path $Path_64)){
	$FilePath = $Path_64 + $OutputFileName

	Out-File -FilePath $FilePath -InputObject $ItemToAdd
}