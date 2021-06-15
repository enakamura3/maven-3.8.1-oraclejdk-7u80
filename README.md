# maven-3.8.1-oraclejdk-7u80

## Getting Started

Run:

```sh
docker build -t enakamura/maven:3.8.1-oraclejdk-7u80 -f Dockerfile-maven .
```

## Maven TLS issue

```docker
ENV MAVEN_OPTS=-Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2
```

from [https://central.sonatype.org/faq/tls-info/#discontinued-support-for-tlsv11-and-below](https://central.sonatype.org/faq/tls-info/#discontinued-support-for-tlsv11-and-below)

> As of June 18th 2018, Central ([repo1.maven.org](http://repo1.maven.org/) & [repo.maven.apache.org](http://repo.maven.apache.org/)) supports TLS 1.2 only. If you encounter the error message
"Received fatal alert: protocol_version"
or
"peer not authenticated"
you have four options for remediation:
> 1. Upgrade your Java runtime, for example with OpenJDK builds or Oracle paying support
> 2. Configure your Java runtime to enable TLS 1.2 by adding -Dhttps.protocols=TLSv1.2
> 3. Use a repository manager that uses a Java version supporting TLS 1.2
> 4. Revert back to http until you can acheive one of the above remediation steps.

## Todo

- Add DockerHub Automated Builds
