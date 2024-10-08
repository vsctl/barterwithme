FROM ubuntu:22.04
RUN apt update -y
RUN apt install -y  \
	python3 python3-pip

RUN pip install -U \
	deeplake \
    	jq \
        langchain \
	langchain-ollama \
        langchainhub \
        langchain_community \
        sentence_transformers \
        tiktoken \
	unstructured

VOLUME /data
WORKDIR /app
COPY src/ /app

ENTRYPOINT ["python3", "app.py"]
