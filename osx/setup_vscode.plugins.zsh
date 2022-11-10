

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
    bradlc.vscode-tailwindcss
    bungcip.better-toml
    GitHub.codespaces
    GitHub.copilot
    GitHub.copilot-nightly
    hashicorp.terraform
    LeetCode.vscode-leetcode
    mechatroner.rainbow-csv
    mgesbert.python-path
    mikestead.dotenv
    ms-azuretools.vscode-docker
    ms-python.python
    ms-python.vscode-pylance
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-toolsai.vscode-jupyter-cell-tags
    ms-toolsai.vscode-jupyter-slideshow
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode-remote.remote-wsl
    ms-vscode.cpptools
    ms-vscode.powershell
    ms-vsliveshare.vsliveshare
    platformio.platformio-ide
    redhat.java
    redhat.vscode-xml
    ritwickdey.LiveServer
    VisualStudioExptTeam.intellicode-api-usage-examples
    VisualStudioExptTeam.vscodeintellicode
    vscjava.vscode-java-debug
    vscjava.vscode-java-dependency
    vscjava.vscode-java-pack
    vscjava.vscode-java-test
    vscjava.vscode-maven
    waderyan.gitblame
    yzhang.markdown-all-in-one
)
for i in "${arraylist[@]}"; 
    do code --install-extension $i
done
