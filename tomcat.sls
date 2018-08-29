install-tomcat:
   archive:
     - extracted
     - name: /opt/
     - source: http://www-eu.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 
     - source_hash: md5=cd4890e4e6a212dafd970da37d040877
     - archive_format: tar
     - tar_options: z
     - if_missing: /opt/apache-tomcat-7.0.90
run_installer:
  cmd.run:
    - name: /opt/apache-tomcat-7.0.90/bin/startup.sh
