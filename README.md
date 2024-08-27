
# Introduction

The bases cli is a command line tool that allows you to interact with Hyland's OnBase platform. It provides a simple and intuitive way to script out your installation process by simplifying and standardizing the install process for each module. The bases cli is designed to be a lightweight and easy-to-use tool that can be integrated into your architechture automations or can be run ad-hoc. It is able to handle post installation tasks such as adding any number of connections strings to your configuration files AND encrypts them, as well as adding multiple service locations to your client configs all in one go. 

## Natively Supported Modules
The bases cli currently has native support for 10 modules and all their features. These modules are: 

- OnBase Configuration
- OnBase Client
- Unity Client
- Unity Management Console
- Unity Scheduler Service x64
- Application Server x64
- Web Server x64
- OnBase Studio x64
- Diagnostics Components
- AE Configuration


  >**Modules that are not natively supported can still be installed using the bases cli, but they will require manual configuration and setup. You will need to consult the module's documentation for more information on the MSI command line arguments needed to install them. With each release, more modules will become natively supported.


# Installation guide the bases cli.

To get started with the bases cli, follow these simple steps:

## Prerequisites

Before installing our application, make sure you have the following:

- .NET 8 is required to be installed. You can find the installer [here](https://dotnet.microsoft.com/en-us/download/dotnet/8.0).

## Installation Steps

1. **Install the CLI**: Once you have .NET 8 installed, open a command prompt or powershell and run the following command:

   ```bash
   dotnet tool install --global bases.cli
   ```

2. **Test the installation** Once the bases cli is installed, you can test it by running the next command

   ```bash
   bases --help
   ```
3. **Expected Output** The expected output should be similar to the following:
   ```
      Usage: bases [command]

      bases.cli

      Commands:
      install          Initiate an installation using a single configuration file.
      verify-file      Test your configuration file for consistency
      create-sample    Create a Sample Config File as a template.
      list-modules     Gets all the command line & 
                       config file friendly module names that this tool will recognize

      Options:
      -h, --help    Show help message
      --version     Show version
   ```

## Additional Information

For more troubleshooting help or if you experience any issues, please create an issue on our [github](https://github.com/Bases-Dev-Tools/bases.cli-example/issues).

# Clone the example project for the bases cli.

## Getting Started with Example Project
The best introduction to the bases cli is to use the example project. It is the fastest way to get familiar with the bases cli and its features.

1. **Clone the Repository**: Start by cloning the repository to your local machine.
2. **Install Dependencies**: If any dependencies are required, follow the installation instructions provided.

```bash
git clone https://github.com/Bases-Dev-Tools/bases.cli-example.git
```
