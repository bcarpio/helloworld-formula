#

apache_package:
  pkg.installed:
     - name: apache2

index_page:
  file.managed:
     - name: /var/www/html/index.html
     - contents: 'Automation for the People'

apche_service:
  service.running:
    - name:  apache2
    - enable: True
