# IIC-OSIC-TOOLS

This environment is a fork of JKU [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS) based on the [efabless.com FOSS-ASIC-TOOLS](https://github.com/efabless/foss-asic-tools).

**IIC-OSIC-TOOLS** (Integrated Infrastructure for Collaborative Open Source IC Tools) is an all-in-one Docker container for open-source-based integrated circuit designs for analog and digital circuit flows. The CPU architectures `x86_64/amd64` and `aarch64/arm64` are natively supported based on Ubuntu 24.04 LTS (since release `2025.01`). This collection of tools is curated by the [**Department for Integrated Circuits (DIC), Johannes Kepler University (JKU)**](https://iic.jku.at). 

This fork provides modified scripts to setup gLayout devlopment environment in the Docker.  

It supports two *modes of operation*:

1. Using a complete desktop environment (XFCE) in `Xvnc` (a VNC server), either directly accessing it with a VNC client of your choice or the integrated [noVNC](https://novnc.com) server that runs in your browser.
2. Using a local X11 server and directly showing the application windows on your desktop.
3. Using it as a development container in Visual Studio Code (or other IDEs)

### To use it: Clone/download this GitHub repository onto your computer

Use the green **Code** button, and either download the zip file or do a

```bash
git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git
```

### Seting up gLayout

See [Chipathon Documentration](https://github.com/sscs-ose/sscs-chipathon-2025/tree/main/resources/Analog_Automation_gLayout) for details of setup.

- Run `start_vnc_GL.sh`
- Run `run_Gl.sh`

## Support with Issues/Problems/Bugs

We are open to your questions about this container and are very thankful for your input! If you run into a problem, and you are sure it is a bug, please let us know by following this routine:

- Take a look at the [KNOWN_ISSUES](KNOWN_ISSUES.md) and the [RELEASE_NOTES](RELEASE_NOTES.md). Both these files can include problems that we are already aware of and maybe include a workaround.
- Check the existing [Issues](https://github.com/iic-jku/IIC-OSIC-TOOLS/issues) on GitHub and see if the problem has been reported already. If yes, please participate in the discussion and help by further collecting information.
- Is the problem in connection with the container, or rather a problem with a specific tool? If it is the second, please also check out the sources of the tool and further contact the maintainer!
- To help us fix the problem, please open an issue on GitHub and report the error. Please give us as much information as possible without being verbose, so filter accordingly. It is also fine to open an issue with very little information, we will help you to narrow down the source of the error.
- Finally, if you can exactly know how to fix the reported error, we are also happy if you open a pull request with a fix!

 Thank you for your cooperation!
