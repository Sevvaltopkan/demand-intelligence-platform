
# Demand Intelligence & Inventory Optimization Platform

An end-to-end machine learning platform for retail demand
forecasting and inventory decision support.

## Project Status

Under active development — Milestone M0: Project Foundation.

## Objectives

- Forecast product-store demand over 7, 14, and 28 days.
- Evaluate forecasting models with temporal backtesting.
- Simulate inventory replenishment policies.
- Expose predictions and inventory recommendations through an API.
- Visualize forecasts and operational metrics in a dashboard.

## Dataset

M5 Forecasting - Accuracy (Kaggle).

Data files are not included in this repository.

## Technology Stack

Python, pytest, Ruff.

Additional technologies will be introduced as the project evolves.


## Development Setup

### Prerequisites

- Python 3.12
- Git
- Windows PowerShell (for the local quality check script)

### Installation

Clone the repository:

```powershell
git clone https://github.com/Sevvaltopkan/demand-intelligence-platform.git
cd demand-intelligence-platform
```

Create a virtual environment:

```powershell
py -3.12 -m venv .venv
```

Install the project and development dependencies:

```powershell
.\.venv\Scripts\python.exe -m pip install -e ".[dev]"
```

### Quality Checks

Run all quality checks using the PowerShell script:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\check.ps1
```

Alternatively, run each check separately:

**Linting:**

```powershell
.\.venv\Scripts\python.exe -m ruff check .
```

**Formatting validation:**

```powershell
.\.venv\Scripts\python.exe -m ruff format --check .
```

**Tests:**

```powershell
.\.venv\Scripts\python.exe -m pytest -v
```

All checks must pass before submitting a pull request.

### Project Structure

```text
src/demand_intelligence/  Python application package
tests/                    Automated tests
scripts/                  Development utility scripts
docs/                     Architecture and project documentation
```

### Development Workflow

1. Start from an up-to-date `main` branch.
2. Create a feature branch for each scoped change.
3. Implement and test the change locally.
4. Run the quality checks.
5. Commit using Conventional Commits.
6. Open a pull request targeting `main`.
7. Review and merge only after validation.

### Data and Secrets

Do not commit:
- Raw or processed M5 datasets
- Python virtual environments
- `.env` files containing secrets
- MLflow artifacts or trained models

Use `.env.example` as a configuration template.

## Documentation

- [Project Scope](docs/project_scope.md)
- [Architecture](docs/architecture.md)

## License

This project's source code is licensed under the MIT License.
See [LICENSE.md](LICENSE.md).

The M5 dataset is subject to its own usage terms and is not
redistributed as part of this repository.

