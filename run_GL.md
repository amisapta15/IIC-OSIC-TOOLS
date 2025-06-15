Open Docker-Desktop Dashboard. Go to the *Containers* tab and you should see the container running. 

- Click on container name `GL-iic-.. `

    ![](./_files/image1.png)

- navigate to `Exec` tab

    ![](./_files/image-2.png) 
- In the Exec terminal (terminal of the Docker)
    - Run `chmod +x ./run_GL.sh`
    - Run `./run_Gl.sh`

  ![](./_files/image3.png)

- This will setup and install necessary components for the gLayout and will start a jupyter server to access it. You can access the Jupyter Server from your browser `http://localhost:8888/lab`

    ![](./_files/image-4.png)

Please note you would need to restart the jupyter server if you close or rebuild the docker container.
