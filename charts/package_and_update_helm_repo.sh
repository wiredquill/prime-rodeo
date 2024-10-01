
#!/bin/bash

# This script automates the process of packaging a Helm chart, moving the .tgz file, and updating the index.yaml.

# Ensure the script is executed from within the charts directory.
# Assume the user is in the charts/ folder and there is a sub-folder for the chart.

# Step 1: Verify that a chart folder is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <chart-folder>"
  echo "Please provide the chart folder name inside the charts directory."
  exit 1
fi

CHART_FOLDER="$1"

# Check if the chart folder exists
if [ ! -d "$CHART_FOLDER" ]; then
  echo "Error: The chart folder '$CHART_FOLDER' does not exist."
  exit 1
fi

# Step 2: Navigate to the provided chart folder
echo "Navigating to the chart folder '$CHART_FOLDER'..."
cd "$CHART_FOLDER"

# Step 3: Package the Helm chart
echo "Packaging the Helm chart..."
helm package .

# Step 4: Move the packaged .tgz file to the parent directory (charts)
TGZ_FILE=$(ls *.tgz 2>/dev/null)
if [ -z "$TGZ_FILE" ]; then
  echo "Error: No .tgz file found. The Helm packaging may have failed."
  exit 1
fi

echo "Moving the packaged .tgz file to the parent charts directory..."
mv "$TGZ_FILE" ../

# Step 5: Navigate back to the charts directory
cd ..

# Step 6: Update the Helm repository index
echo "Updating the Helm repository index..."
helm repo index .

# Step 7: Script completed
echo "Helm chart packaged, moved, and index updated successfully."
