# FYP Indoor UGV

Final-year project: indoor unmanned ground vehicle (operator stack, simulation, perception).

## Repository layout

| Path | Purpose |
|------|---------|
| [`operator/`](operator/) | Operator interface + “brain” (API, LLM, mission logic). |
| [`simulation/`](simulation/) | ROS 2 workspace / Gazebo (or similar) for indoor sim. |
| [`ai_perception/`](ai_perception/) | Vision / detection models and inference code. |
| [`scripts/`](scripts/) | Launch helpers, one-off utilities, calibration. |
| [`docs/`](docs/) | Architecture notes, diagrams, setup guides (optional). |

Copy your final code from your working tree into these folders (or adjust names in this README if you prefer a different split).

## Quick start (after you add code)

1. **Operator** — see `operator/README.md`.
2. **Simulation** — see `simulation/README.md`.
3. **Perception** — see `ai_perception/README.md`.

## License

Add a `LICENSE` file when you are ready to publish.
