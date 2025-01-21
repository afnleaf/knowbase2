function SuperCat {
    param(
        [Parameter(Mandatory=$true)]
        [string]$fp,
        
        [Parameter(Mandatory=$true)]
        [string]$fe,
        
        [switch]$IncludeFileName = $true,
        
        [switch]$ShowSummary = $true
    )

    # Ensure the extension starts with a dot
    if (-not $fe.StartsWith('.')) {
        $fe = ".$fe"
    }

    # Initialize counter
    $fileCount = 0

    try {
        # Get all files recursively with the specified extension
        $files = Get-ChildItem -Path $fp -Filter "*$fe" -Recurse -ErrorAction Stop

        foreach ($file in $files) {
            $fileCount++
            
            # Display separator and filename if enabled
            if ($IncludeFileName) {
                Write-Host "`n$('='*80)"
                Write-Host "File: $($file.FullName)"
                Write-Host "$('='*80)`n"
            }

            try {
                # Read and display file contents
                Get-Content -Path $file.FullName -Raw
            }
            catch {
                Write-Error "Error reading file $($file.FullName): $_"
            }
        }

        # Display summary if enabled
        if ($ShowSummary) {
            Write-Host "`n$('='*80)"
            Write-Host "Total $fe files found: $fileCount"
        }
    }
    catch {
        Write-Error "Error accessing directory $fp`: $_"
        return
    }
}

# Example usage:
# Read-FolderContents -fp "C:\YourFolder" -fe "txt"
# Read-FolderContents -fp "C:\YourFolder" -fe ".log" -IncludeFileName:$false
# Read-FolderContents -fp "C:\YourFolder" -fe "cfg" -ShowSummary:$false

# load the script into the shell
# . ./SuperCat.ps1
#  SuperCat -fp "C:\YourFolder" -fe "txt"
