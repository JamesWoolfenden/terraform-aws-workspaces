# diagram.py
# Needs diagrams from pip and graphwiz installed

from diagrams import Diagram, Cluster
from diagrams.aws.enduser import Workspaces


with Diagram("Workpaces", show=False):
     with Cluster():
          Workspaces("directory")-Workspaces("Workspace")
