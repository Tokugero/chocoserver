# Windows Dockerized Chocolatey Server
## Quickstart

Add a persistent directory, or symlink to one, (This example uses C:\chocolatey) to survive docker death.

`docker build -t chocoserver .`  
`docker run -d -it -p 80:80/tcp -v "c:\chocolatey:c:\tools\chocolatey.server\App_Data\Packages" chocoserver`

### From a remote computer

Browse to http://<server>/chocolatey/Packages to see your empty package list.  
Follow https://chocolatey.org/docs/create-packages-quick-start to add new packages.
