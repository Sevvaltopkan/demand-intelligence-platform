
# Project Scope

## Problem Statement

Retail inventory planning requires reliable product-store
demand forecasts and actionable replenishment decisions.

This platform will evaluate demand forecasting models and
use their predictions in simulated inventory policies.

## Objectives

- Forecast daily product-store sales for 28 days.
- Report aggregated demand for 7, 14, and 28 days.
- Compare statistical baselines and machine learning models.
- Apply rolling-origin backtesting.
- Simulate inventory replenishment decisions.
- Expose results through an API and dashboard.

## Dataset

Primary dataset: M5 Forecasting - Accuracy.

The dataset contains historical sales, calendar information,
and selling prices.

Actual inventory levels, replenishment lead times, and
inventory costs are not available.

These values will be explicitly modeled as simulation
assumptions rather than presented as real observations.

## MVP Scope

- M5 data ingestion and validation
- Exploratory data analysis
- Seasonal Naive baseline
- LightGBM forecasting
- Temporal backtesting
- MLflow experiment tracking

## V1 Scope

- Forecast uncertainty analysis
- Inventory simulation and policy comparison
- FastAPI prediction service
- Streamlit dashboard
- Docker and CI integration

## Out of Scope

- Real-world purchasing transactions
- Live retailer integrations
- Production-scale deployment guarantees
- Claims of verified commercial savings

## Evaluation Principles

- No random train-test split
- No future-target leakage
- Chronological forecast origins
- Reproducible model comparisons
- Explicit limitations and assumptions
