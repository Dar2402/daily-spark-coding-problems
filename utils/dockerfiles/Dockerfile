# Base Python 3.10 image
FROM python:3.10-bullseye

# Expose ports
EXPOSE 8888 4040

# Change shell to /bin/bash
SHELL ["/bin/bash", "-c"]

# Upgrade pip
RUN pip install --upgrade pip

# Install OpenJDK 11 (compatible with Spark 3.x)
RUN apt-get update && \
    apt install -y openjdk-11-jdk wget curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Fix certificate issues
RUN apt-get update && \
    apt-get install -y ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f

# Install nano & vim
RUN apt-get update && \
    apt-get install -y nano vim && \
    apt-get clean

# Setup JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Download and Setup Spark 3.5.1
WORKDIR /tmp
RUN wget https://archive.apache.org/dist/spark/spark-3.5.1/spark-3.5.1-bin-hadoop3.tgz && \
    tar -xvf spark-3.5.1-bin-hadoop3.tgz && \
    mv spark-3.5.1-bin-hadoop3 /spark && \
    rm spark-3.5.1-bin-hadoop3.tgz

# Set Spark environment variables
ENV SPARK_HOME=/spark
ENV PATH=$SPARK_HOME/bin:$PATH
ENV PYSPARK_PYTHON=/usr/local/bin/python
ENV PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.9.7-src.zip

# Configure Spark defaults
RUN mv $SPARK_HOME/conf/log4j2.properties.template $SPARK_HOME/conf/log4j2.properties && \
    mv $SPARK_HOME/conf/spark-defaults.conf.template $SPARK_HOME/conf/spark-defaults.conf && \
    mv $SPARK_HOME/conf/spark-env.sh.template $SPARK_HOME/conf/spark-env.sh

# Install JupyterLab, PySpark, Kafka client, Delta Lake, AWS SDK
RUN pip install jupyterlab \
    pyspark==3.5.1 \
    kafka-python==2.0.2 \
    delta-spark==3.2.0 \
    boto3

RUN mkdir -p /root/.jupyter && \
    echo "c.ServerApp.open_browser = False" >> /root/.jupyter/jupyter_server_config.py


# Set working directory
WORKDIR /home/jupyter

# Clone Ease with Apache Spark repo (optional starter code)
RUN git clone https://github.com/subhamkharwal/ease-with-apache-spark.git

# Fix Jupyter logging issue
RUN ipython profile create && \
    echo "c.IPKernelApp.capture_fd_output = False" >> "/root/.ipython/profile_default/ipython_kernel_config.py"

CMD ["bash", "-c", "python3 -m jupyterlab --ip=0.0.0.0 --port=${JUPYTER_PORT:-8888} --allow-root --NotebookApp.token=''"]

