<#
#>
<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function Get-User
{
    [CmdletBinding()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

<#
.Synopsis
   Retrieves all registered devices.
.DESCRIPTION
   Retrieves the full details of all devices registered to the give PushBullet API key. Results are a JSON object.
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function Get-Device
{
    [CmdletBinding()]
    [OutputType([System.String])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]$APIKey,
        [Parameter(Mandatory=$false,Position=1)]
        [switch]$ActiveOnly
    )

    Begin
    {
        $DevicesUrl = "https://api.pushbullet.com/v2/devices";
        $DevicesMethod = "GET";
        $AccessCredential = New-Object System.Management.Automation.PSCredential ($APIKey, (ConvertTo-SecureString $APIKey -AsPlainText -Force));
    }
    Process
    {
        $Devices = Invoke-RestMethod -Uri $DevicesUrl -Credential $AccessCredential -Method $DevicesMethod;
        if ($ActiveOnly) {
            $Devices.devices| Where-Object {$_.active -eq "true"};
        } else {
            $Devices.devices;
        }
    }
    End
    {
    }
}

function Remove-Device
{
    [CmdletBinding()]
    [OutputType([bool])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   Position=0)]
        [string]$APIKey,
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=1)]
        [string]$DeviceId
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

function Get-Contact
{
    [CmdletBinding()]
    [OutputType([System.String])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string]$APIKey,
        [Parameter(Mandatory=$false,Position=1)]
        [switch]$ActiveOnly
    )

    Begin
    {
        $ContactsURL = "https://api.pushbullet.com/v2/contacts";
        $ContactsMethod = "GET";
        $AccessCredential = New-Object System.Management.Automation.PSCredential ($APIKey, (ConvertTo-SecureString $APIKey -AsPlainText -Force));

    }
    Process
    {
        $Contacts = Invoke-RestMethod -Uri $ContactsURL -Credential $AccessCredential -Method $ContactsMethod;
        if ($ActiveOnly) {
            $Contacts.contacts| Where-Object {$_.active -eq "true"};
        } else {
            $Contacts.contacts;
        }
    }
    End
    {
    }
}

function Remove-Contact
{
    [CmdletBinding()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

function Get-UploadRequest
{
    [CmdletBinding()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

function Get-PushHistory
{
    [CmdletBinding()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

function Send-Push
{
    [CmdletBinding()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

function Remove-Push
{
    [CmdletBinding()]
    [OutputType([int])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Param1,

        # Param2 help description
        [int]
        $Param2
    )

    Begin
    {
    }
    Process
    {
    }
    End
    {
    }
}

Export-ModuleMember -Function Get-Device;
Export-ModuleMember -Function Get-Contact;