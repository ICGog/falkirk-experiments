logfile = open("/home/srguser/falkirk/Naiad/replay_25machines_8threads_lindi_test.log")
for row in logfile.readlines():
  fields = [x.strip() for x in row.split(' ')]
  if len(fields) > 5 and fields[0] == 'Time':
    time = int(fields[5])
    if time > 150:
      print row



logfile = open("/home/srguser/falkirk/Naiad/test2.log")
for row in logfile.readlines():
  fields = [x.strip() for x in row.split(' ')]
  if len(fields) > 6 and fields[1] == 'Time':
    time = int(fields[6])
    if time > 3000:
      print row

logfile = open("/home/icg27/Dropbox/phd/Naiad/test.log")
for row in logfile.readlines():
  fields = [x.strip() for x in row.split(' ')]
  if len(fields) > 5 and fields[0] == 'Time':
    time = int(fields[5])
    if time > 200:
      print row
