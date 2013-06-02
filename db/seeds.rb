# Test entrants
Entrant.create([
  { first_name: "Paul",
    last_name: "Finkel",
    guest: false,
    company_id: 1 },
  { first_name: "Anke",
    last_name: "Heckhoff",
    guest: false,
    company_id: 2 },
  { first_name: "Will",
    last_name: "McCollum",
    guest: false,
    company_id: 3 }
  ])

# Test Badge Scans
BadgeScan.create([
  { scan_time: '2013-05-29  04:40:29',
    entrant_id: 1,
    door_id: 1 },
  { scan_time: '2013-05-29  04:38:50',
    entrant_id: 2,
    door_id: 1 },
  { scan_time: '2013-05-29  04:37:19',
    entrant_id: 3,
    door_id: 1 }
  ])
# For reference: DateTime.strptime('string', '%m/%d/%Y %l:%M:%S %p')

# Test Doors
Door.create([
  { location: 'Atrium Door (In)' },
  { location: 'Back Door (In)' }
  ])

# Test Comapnies
Company.create([
  { name: 'Roximity' },
  { name: 'Closely'  },
  { name: 'Uber' }
  ])