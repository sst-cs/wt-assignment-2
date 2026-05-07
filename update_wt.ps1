$repos = gh repo list sst-cs --limit 200 --json name,nameWithOwner | ConvertFrom-Json
$a2Repos = $repos | Where-Object { $_.name -match "wt-assignment-02-" -and $_.name -notmatch "tests" -and $_.name -ne "wt-assignment-2" }

$wtTemplate = Get-Content "c:\Users\ahtsh\OneDrive\Desktop\New folder\wt-assignment-2-ref\.github\workflows\classroom.yml" -Raw

foreach ($repo in $a2Repos) {
    $fullName = $repo.nameWithOwner
    Write-Host "Updating $fullName"
    
    # Get the file SHA
    $fileInfo = gh api "repos/$fullName/contents/.github/workflows/classroom.yml" | ConvertFrom-Json
    if ($fileInfo.sha) {
        $sha = $fileInfo.sha
        $b64Content = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($wtTemplate))
        
        $payload = @{
            message = "Fix autograder reporter crash"
            content = $b64Content
            sha = $sha
            branch = "main"
        } | ConvertTo-Json
        
        $payload | gh api "repos/$fullName/contents/.github/workflows/classroom.yml" --method PUT --input - | Out-Null
        Write-Host "-> Successfully updated $fullName"
    }
}
