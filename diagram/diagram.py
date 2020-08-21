# diagram.py
# Needs diagrams from pip and graphwiz installed

from diagrams import Diagram, Cluster
from diagrams.aws.enduser import Workspaces


with Diagram("Workspaces", show=False):
     with Cluster():
          Workspaces("directory")-Workspaces("Workspace")
