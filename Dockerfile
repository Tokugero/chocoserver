ARG version=ltsc2019
FROM mcr.microsoft.com/windows/servercore:$version
ENV chocolateyUseWindowsCompression false

ADD installchoco.ps1 C:

RUN powershell -Command \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'));
RUN powershell .\installchoco.ps1; 

CMD ["cmd"]
