# WARNING! It seem to be XXE UNSAFE!!!!

import xml.etree.ElementTree as ET
tree = ET.parse('country_data.xml')
root = tree.getroot()

root['your-element']
root[0]
