FROM semitechnologies/weaviate:latest

ADD bin/entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh", "/bin/weaviate"]
CMD ["--host", "0.0.0.0", "--port", "8080", "--scheme", "http"]