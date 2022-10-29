

"""
Command line extension management
To make it easier to automate and configure VS Code, it is possible to list, install, and uninstall extensions from the command line. When identifying an extension, provide the full name of the form publisher.extension, for example ms-python.python.

Example:

code --extensions-dir <dir>
    Set the root path for extensions.
code --list-extensions
    List the installed extensions.
code --show-versions
    Show versions of installed extensions, when using --list-extension.
code --install-extension (<extension-id> | <extension-vsix-path>)
    Installs an extension.
code --uninstall-extension (<extension-id> | <extension-vsix-path>)
    Uninstalls an extension.
code --enable-proposed-api (<extension-id>)
    Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.

# provide '@<version>' to install a specific version, for example: 'christian-kohler.path-intellisense@1.2.3'.
"""

arraylist=(
    christian-kohler.path-intellisense
)
for i in "${arraylist[@]}"; 
    do code --install-extension $i
done
