
$ErrorActionPreference = "Stop"

$projectRoot = Join-Path $PSScriptRoot ".."
$python = Join-Path $projectRoot ".venv\Scripts\python.exe"

if (-not (Test-Path $python)) {
    throw "Python virtual environment not found. Create .venv first."
}



Push-Location $projectRoot

try {
    Write-Host "Running Ruff lint..."
    & $python -m ruff check .
    if ($LASTEXITCODE -ne 0) {
        throw "Ruff lint failed."
    }

    Write-Host "Checking Ruff formatting..."
    & $python -m ruff format --check .
    if ($LASTEXITCODE -ne 0) {
        throw "Ruff format check failed."
    }

    Write-Host "Running pytest..."
    & $python -m pytest -v
    if ($LASTEXITCODE -ne 0) {
        throw "pytest failed."
    }

    Write-Host "All quality checks passed."
}
finally {
    Pop-Location
}
