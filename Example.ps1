Import-Module -Name ./examples/Install-DotNet.psm1

#Installs .Net 8 if not already installed
Install-DotNet

#Will install the latest version of Bases.Cli
dotnet tool install --global bases.cli

<# You probably don't want to run this script as is. #>

################################################################################
#                           Help Commands                                      #
################################################################################
# Gives you all the commands, arguments, and options
bases --help 
# Alias for help
bases -h 
# Help Creating a sample
bases create-sample -h 
# Help Verifying a configuration file
bases verify-file -h 
# Lists all the modules
bases list-modules -h 


################################################################################
#                      Create Sample Commands
# Options:
# -p, --path <String>    Output Directory, if not provided, the current location is used
# -t, --type <String>    The type, yaml or json. Leaving it blank will create a copy of both.
# -h, --help             Show help message                                  
################################################################################
# Creates both yaml and json samples to the current directory\samples
bases create-sample
# Creates a yaml sample to the current directory\samples
bases create-sample -t yaml
# Creates a json sample to the current directory\samples
bases create-sample -t json
# Creates a sample to the specified directory with the specified type
bases create-sample -p ".\mySamples\" -t yaml


################################################################################
#                      Verify Config File Commands        
# Arguments:
# 0: path       Path to the server configuration file to be used (Required)
# 1: encrypt    Encrypts the passwords in the config file and overwrites it. Accepts 'true' or 'false.
# Options:
# -p, --out-path <String>    Specify the path for the encrypted file to be saved. If used, the original will not be overwritten.                    
################################################################################
#Verify a sample File
bases verify-file "samples\Sample - ExAppServer01.yaml"
bases verify-file "samples\Sample - ExAppServer01.json"
#Verify and encrypt a sample File
bases verify-file "samples\Sample - ExAppServer01.yaml" true
bases verify-file "samples\Sample - ExAppServer01.json" true
#Verify and encrypt a sample File
bases verify-file "samples\Sample - ExAppServer01.yaml" true "samples\MyEncryptedFile.yaml"
bases verify-file "samples\Sample - ExAppServer01.json" true "samples\MyEncryptedFile.json"


################################################################################
#                            Install Commands                                  
# Arguments:
# 0: path       Path to the server configuration file to be used (Required)
# 1: encrypt    Encrypts the passwords in the config file and overwrites it. Accepts 'true' or 'false.
# 2: trace      Set the log level to 'Trace' by appending the word 'Trace'
################################################################################
#Begins an installation using the specified configuration file
bases install "samples\Sample - ExAppServer01.yaml"
#Begins an installation using the specified configuration file and encrypts the passwords
bases install "samples\Sample - ExAppServer01.yaml" true
#Begins an installation using the specified configuration file and encrypts the passwords and sets the log level to 'Trace'
bases install "samples\Sample - ExAppServer01.yaml" true trace