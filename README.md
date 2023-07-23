# Test OS devcontainer using desktop-lite

* Open this repo in VS Code
* When prompted select to build the devcontainer
* The desktop environment is accessed in a browser at <http://localhost:6080/>  
  <img src="img/vnc-password.png" width="75%">

  The password is: `vscode`

* Right click on the desktop to access programs like File Manager and Terminal  
  <img src="img/fluxbox-desktop.png" width="75%">

* When you first launch Terminal you may see this error message, I find simply clicking to *Add terminal down* starts a new Terminal that works (or click on *Create a new session*)
  <img src="img/tilix-terminal-error.png" width="75%">

* To save files in the desktop environment into this repo the directory path is `/workspaces/{repo-name}` so `/workspaces/os-test-desktop-lite` for this repo.

* In this repo in the desktop environment we are running as root, so we have to launch GitHub Desktop and RStudio Desktop with the `--no-sandbox` flag from the Tilix Terminal
  ```
  github-desktop --no-sandox
  rstudio --no-sandbox
  ```

* Here are screenshots of them running
  <img src="img/fluxbox-github-desktop.png" width="75%">  
  <img src="img/fluxbox-rstudio-desktop.png" width="75%">

* The Stata graphical environment is started from a Terminal with
  ```
  /usr/local/stata17/xstata-mp
  ```  
  <img src="img/fluxbox-xstata-mp.png" width="75%">

## Helpful references

* https://github.com/devcontainers/features/tree/main/src/desktop-lite
* https://code.visualstudio.com/docs/devcontainers/create-dev-container
