Write-Host "Initializing Git submodules..."

git submodule update --init --recursive

if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to initialize Git submodules."
    exit $LASTEXITCODE
}

Write-Host "Setup completed."
