# Start from the rocker/rstudio image
FROM rocker/rstudio:latest

# Update and install the required package
RUN sudo apt update && sudo apt install -y libgeos-dev
