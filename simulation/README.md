# Simulation (ROS 2)

Place your **colcon workspace** here (typically `src/` with packages such as `fyp_indoor_sim`).

**Suggested migration:** copy the `simulation/src` tree from your dump into `simulation/src`. Do **not** commit `build/`, `install/`, or `log/` — they are in `.gitignore`. Rebuild with:

```bash
cd simulation
colcon build --symlink-install
source install/setup.bash
```
