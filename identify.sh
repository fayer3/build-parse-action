# iterates over the built jars, and identifies the loaders
# if a loader is found, it is written to the github output
# valid outputs are
# FABRIC_FILE_NAME
# QUILT_FILE_NAME
# FORGE_FILE_NAME
# NEOFORGE_FILE_NAME

for file in ./build/libs/*; do
	fileName=$(basename ${file})
	if [[ "${fileName}" == *"fabric"* ]]; then
		echo "FABRIC_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	elif [[ "${fileName}" == *"neoforge"* ]]; then
		echo "NEOFORGE_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	elif  [[ "${fileName}" == *"forge"* ]]; then
		echo "FORGE_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	elif [[ "${fileName}" == *"quilt"* ]]; then
		echo "QUILT_FILE_NAME=${fileName}" >> $GITHUB_OUTPUT
	fi
done
