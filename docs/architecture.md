
# Architecture

## Architectural Style

The platform follows a modular monolith architecture.

Core data processing, forecasting, evaluation, and
inventory logic will be implemented as independent
Python modules.

The API and dashboard will be added after the
forecasting and inventory components are validated.

## Planned Components

### Data Layer

Responsible for:
- Dataset ingestion
- Schema validation
- Data quality checks
- Data transformation

### Forecasting Layer

Responsible for:
- Feature engineering
- Baseline forecasting
- LightGBM training
- Multi-horizon inference

### Evaluation Layer

Responsible for:
- Rolling-origin backtesting
- Forecasting metrics
- Error analysis
- Experiment tracking

### Inventory Layer

Responsible for:
- Inventory state management
- Replenishment decisions
- Inventory simulation
- Operational KPI evaluation

### Application Layer

FastAPI will expose prediction and inventory
recommendation endpoints.

Streamlit will provide an interactive dashboard.

## Dependency Rules

- Core ML logic must not depend on FastAPI.
- Data processing must be testable independently.
- Inventory policies must be independent of the model type.
- The API must load trained model artifacts rather than
  retrain models during requests.
- Configuration and secrets must not be hardcoded.

## Initial Technology Decisions

- Python 3.12
- pytest
- Ruff
- Pandas and NumPy for data processing
- LightGBM for machine learning
- MLflow for experiment tracking
- FastAPI for serving
- Streamlit for visualization

## Future Considerations

- PostgreSQL for persistent application records
- Docker Compose for local service orchestration
- Automated retraining and monitoring
