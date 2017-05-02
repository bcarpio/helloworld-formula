# This setup for mongodb assumes that the replica set can be determined from
# the id of the minion
# NOTE: Currently this will not work behind a NAT in AWS VPC.
# see http://lodge.glasgownet.com/2012/07/11/apt-key-from-behind-a-firewall/comment-page-1/ for details

apache_package:
  pkg.installed:
     - name: apache2

index_page:
  file.managed:
     - name: /var/www/html/index.html
     - text: 'Automation for the People'

apche_service:
  service.running:
    - name:  apache2
    - enable: True
