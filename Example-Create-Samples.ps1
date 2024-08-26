# Creates both yaml and json samples to the current directory\samples
bases create-sample
# Creates a yaml sample to the current directory\samples
bases create-sample -t yaml
# Creates a json sample to the current directory\samples
bases create-sample -t json
# Creates a sample to the specified directory with the specified type
bases create-sample -p ".\mySamples\" -t yaml