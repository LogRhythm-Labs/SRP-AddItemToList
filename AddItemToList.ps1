# Copyright 2016 LogRhythm Inc.   
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at;
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the specific language governing permissions and limitations under the License.

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
