FROM semitechnologies/weaviate:latest

ADD bin/entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh", "/bin/weaviate"]
CMD ["--host", "fly-local-6pn", "--port", "8080", "--scheme", "http"]