# GL-IIC-OSIC-TOOLS

This startup scripts are for glayout specific setup. This is a fork of JKU [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS) based on the [efabless.com FOSS-ASIC-TOOLS](https://github.com/efabless/foss-asic-tools). This fork provides modified scripts to setup gLayout devlopment environment in the IIC-OSIC Docker Image.  

It also supports three *modes of operation*:

1. Using a complete desktop environment (XFCE) in `Xvnc` (a VNC server), either directly accessing it with a VNC client of your choice or the integrated [noVNC](https://novnc.com) server that runs in your browser.
2. Using a local X11 server and directly showing the application windows on your desktop.
3. Using it as a development container in Visual Studio Code (or other IDEs). You can access [the Docker](https://code.visualstudio.com/docs/devcontainers/attach-container) though the Docker extension of VS-Code or access the Jupyter Server running in the Docker though [remote tunneling extension](https://code.visualstudio.com/docs/datascience/jupyter-notebooks#_connect-to-a-remote-jupyter-server). Details documentation can be found in [VSCode website](https://code.visualstudio.com/docs/) with videos and very detailed instructions.

### To use it: Clone/download this GitHub repository onto your computer

Use the green **Code** button (top-left), and either download the zip file or do 

```bash
git clone --depth=1 https://github.com/ReaLLMASIC/IIC-OSIC-TOOLS.git
```

### Using VNC or X11 to access the Docker Image:

See IIC-OSIC docker setup [Documentration](https://docs.google.com/document/d/e/2PACX-1vT1jADYn6HAjlp1b3KB7T0nAkxzmT5GXo7NzFjxZ47M9s9H3oyHdoU39wxUscF8DtTNeQ3Egeo_1e1s/pub) for more detailed steps. 

- Allow Security permissions 
    - (Linux/WSL in Windows) Open a terminal and run `xhost +Local:*`  
    - (mac) Open XQuartz and type in `xhost + 127.0.0.1`
- Run scripts *start_[--]_GL.sh* (for Linux/Mac) or click on *start_[--].bat* (for Windows) to build the container.
    - Open a terminal (or xterm) and execute `./start_vnc_GL.sh`  
        (Note: you might have to do `chmod +x ./start_vnc_GL.sh`)

    - Double-click to execute `start_vnc_GL.bat` and allow permissions.

    - Same for the `start_X11_GL.sh` or `...bat` for X11

The running docker should appear in the container tab in Docker-Desktop. This script is similar to JKU IIC-OSIC-TOOLS scripts except addtion of an extra `8888` port for runnning Jupyter. You can check that in the container tab. Remember, you can add `DESIGNS="your/path/to/directory" ./start_vnc_GL.sh` to map a user-defined directory to the Docker Container. For details see the JKU [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS/iss) repo.

Note: “start_x.sh” script might not work in all Linux Distro. 

### Seting up gLayout

Once the Docker is up and running, go to the *container tab* in Docker Desktop, click on the container name and navigate to `Exec` tab and excecute `./run_Gl.sh` in the terminal of the Docker. 

See [`run_GL`](./run_GL.md) for pictorial details.

You can access the Jupyter Server from your browser `http://localhost:8888/lab`

See [Chipathon Documentration](https://github.com/sscs-ose/sscs-chipathon-2025/tree/main/resources/Analog_Automation_gLayout) for more details of the setup.

### Support with Issues/Problems/Bugs

Please take a look at the issues in the JKU [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS/iss) repo or reach out in the Matrix/Element channel.
