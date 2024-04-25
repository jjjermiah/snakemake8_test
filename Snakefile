
storage HTTP:
    provider="http"

rule all:
    input:
        "results/summary.txt"

rule get_file:
    input:
        storage.HTTP("https://example-files.online-convert.com/document/txt/example.txt")
    output:
        "results/summary.txt"
    shell:
        "cat {input} > {output}"
