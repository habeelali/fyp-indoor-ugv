Figure placeholders are used in the thesis. Add the following files to this folder (figures/) as PNG images and replace the \fbox placeholders in the .tex files with \includegraphics{figures/filename}.

All figure filenames use .png for consistency.

Chapter 1:
---------
  literature_taxonomy.png    - Literature review taxonomy for disaster site exploration systems (fig:literature_taxonomy)
  multitier_architecture.png - Multi-tier system architecture (fig:multitier_arch)

Chapter 3:
---------
  system_topology.png        - System topology and data flow (fig:system_topo)
  power_distribution.png     - Power distribution diagram (fig:power_dist)
  chassis_dimensions.png     - UGV chassis dimensions (fig:chassis)
  occupancy_grid.png         - Occupancy grid from SLAM (fig:occupancy_grid)
  dijkstra_path.png          - Dijkstra pathfinding (fig:dijkstra)
  network_topology.png       - Network topology (fig:network_topo)
  perception_pipeline.png    - Vision and AI perception pipeline (fig:perception_pipeline)
  xsdm_flowchart.png         - X-SDM decision tree (fig:xsdm)

Chapter 4 and 5:
---------------
  system_architecture.png    - System architecture: UGV, multi-tier network (Wi-Fi, 4G, mesh, LoRa), GCS.
                              Used in: chapters/chapter04.tex (fig:arch)

  dashboard.png             - GCS operator dashboard: camera streams, map, detections, teleop, battery/network.
                              Used in: chapters/chapter04.tex (fig:dashboard)

  floor_plan.png            - Test environment floor plan (approx. 40×30 m).
                              Used in: chapters/chapter04.tex (fig:floorplan)

  map_w_kinectcostmap.png   - Occupancy map with local costmap (RViz): 2D map, costmap overlay, sensor scan.
                              Used in: chapters/chapter05.tex (fig:mapping)

  hardware_block.png        - UGV power and connectivity block diagram (Appendix C).
                              Used in: appendices.tex (fig:hardwareblock)

Optional (if available):
------------------------
  ugv_photo.png             - Photo of the UGV platform (e.g. for Ch 3 or Ch 4).
  gazebo.png                 - Simulation screenshot (Gazebo) if used in methodology or results.

Guidance:
---------
- Use .png for all figures so you can export from any tool (diagrams, screenshots, photos).
- In the .tex files, search for "Add figure:" to find placeholder boxes; replace the \fbox{\parbox{...}} with:
    \includegraphics[width=0.85\textwidth]{figures/filename}
  and keep the \caption and \label.
