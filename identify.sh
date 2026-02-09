# iterates over the built jars, and identifies the loaders
# if a loader is found, it is written to the github output
# valid outputs are
# FABRIC_FILE_NAME
# QUILT_FILE_NAME
# FORGE_FILE_NAME
# NEOFORGE_FILE_NAME

for file in ./build/libs/*; do
	echo ${file}
	filename=$(basename ${file})
	if [[ "${fileName}" == *"fabric.jar"* ]]; then
		echo "FABRIC_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	elif [[ "${fileName}" == *"neoforge.jar"* ]]; then
		echo "NEOFORGE_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	elif  [[ "${fileName}" == *"forge.jar"* ]]; then
		echo "FORGE_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	elif [[ "${fileName}" == *"quilt.jar"* ]]; then
		echo "QUILT_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	fi
done
