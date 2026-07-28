#!/bin/bash
# Auto-updates RouteMap, WorldMap, and Stats for the North Macedonia update
cd ~/Documents/mookobuko

python3 << 'PYEOF'
# ============ ROUTEMAP ============
path = 'src/components/RouteMap.astro'
with open(path) as f:
    c = f.read()
start = c.find("  { emoji: '🇬🇷', name: 'Aegina', dates: 'Now'")
end = c.find("status: 'upcoming', gradient: '#C6F135, #00C9A7' },") + len("status: 'upcoming', gradient: '#C6F135, #00C9A7' },")
new = """  { emoji: '🇬🇷', name: 'Aegina', dates: 'Jun – Jul', status: 'done', gradient: '#0EA5E9, #00C9A7' },
  { emoji: '🇷🇴', name: 'Bucharest', dates: 'Jul', status: 'done', gradient: '#E11D48, #F59E0B' },
  { emoji: '🇷🇴', name: 'Brasov', dates: 'Jul', status: 'done', gradient: '#DC2626, #FFD93D' },
  { emoji: '🇭🇺', name: 'Budapest', dates: 'Jul', status: 'done', gradient: '#F97316, #FFD93D' },
  { emoji: '🇵🇱', name: 'Krakow', dates: 'Jul', status: 'done', gradient: '#7C3AED, #C6F135' },
  { emoji: '🇦🇱', name: 'Tirana', dates: 'Jul', status: 'done', gradient: '#DC2626, #1a1a1a' },
  { emoji: '🇲🇰', name: 'Lake Ohrid', dates: 'Now', status: 'current', gradient: '#DC2626, #FFD93D' },
  { emoji: '🇽🇰', name: 'Prizren', dates: 'Up next', status: 'upcoming', gradient: '#1a4d8f, #FFD93D' },
  { emoji: '🇽🇰', name: 'Peja', dates: 'Soon', status: 'upcoming', gradient: '#1a4d8f, #C6F135' },
  { emoji: '🌍', name: '& more...', dates: 'The adventure continues', status: 'upcoming', gradient: '#C6F135, #00C9A7' },"""
c = c[:start] + new + c[end:]
with open(path, 'w') as f:
    f.write(c)
print("✓ RouteMap updated")

# ============ WORLDMAP ============
path = 'src/components/WorldMap.astro'
with open(path) as f:
    c = f.read()
# Change Aegina from current to done, and replace Bucharest/Budapest/Krakow upcoming block
start = c.find('    { name: "Aegina"')
# find end of the stops array - the last upcoming stop then closing ];
end = c.find('description: "Old town, pierogis and salt mines." }') + len('description: "Old town, pierogis and salt mines." }')
new = '''    { name: "Aegina", lat: 37.75, lon: 23.43, dates: "Jun - Jul", status: "done", color: "#0EA5E9", slug: null, heroImage: null, travel: "flight", description: "Island life off the coast of Athens. One week in the sun." },
    { name: "Bucharest", lat: 44.43, lon: 26.10, dates: "Jul", status: "done", color: "#E11D48", slug: null, heroImage: null, travel: "flight", description: "Eastern Europe begins. Mom joined the trip!" },
    { name: "Brasov", lat: 45.66, lon: 25.61, dates: "Jul", status: "done", color: "#DC2626", slug: null, heroImage: null, travel: "train", description: "Transylvania, Dracula's castle and Carpathian views." },
    { name: "Budapest", lat: 47.50, lon: 19.04, dates: "Jul", status: "done", color: "#F97316", slug: null, heroImage: null, travel: "flight", description: "Thermal baths and ruin bars." },
    { name: "Krakow", lat: 50.06, lon: 19.94, dates: "Jul", status: "done", color: "#7C3AED", slug: null, heroImage: null, travel: "flight", description: "Old town, pierogis and salt mines." },
    { name: "Tirana", lat: 41.33, lon: 19.82, dates: "Jul", status: "done", color: "#DC2626", slug: null, heroImage: null, travel: "flight", description: "Albania's colorful, chaotic capital." },
    { name: "Lake Ohrid", lat: 41.11, lon: 20.80, dates: "Now", status: "current", color: "#FFD93D", slug: null, heroImage: null, travel: "drive", description: "One of Europe's oldest and deepest lakes." },
    { name: "Prizren", lat: 42.21, lon: 20.74, dates: "Up next", status: "upcoming", color: "#1a4d8f", slug: null, heroImage: null, description: "Kosovo's cultural heart." },
    { name: "Peja", lat: 42.66, lon: 20.29, dates: "Soon", status: "upcoming", color: "#1a4d8f", slug: null, heroImage: null, description: "Mountains, monasteries and the Rugova Gorge." }'''
c = c[:start] + new + c[end:]
with open(path, 'w') as f:
    f.write(c)
print("✓ WorldMap updated")

# ============ STATS ============
path = 'src/components/Stats.astro'
with open(path) as f:
    c = f.read()
c = c.replace("{ number: 21, label: 'Flights'", "{ number: 25, label: 'Flights'")
c = c.replace("{ number: 14, label: 'Countries'", "{ number: 19, label: 'Countries'")
c = c.replace("{ number: 31696, label: 'Miles traveled'", "{ number: 33280, label: 'Miles traveled'")
with open(path, 'w') as f:
    f.write(c)
print("✓ Stats updated")
PYEOF

echo ""
echo "All components updated. Now run:"
echo "  git add . && git commit -m 'Update to Lake Ohrid, 25 flights, 19 countries' && git push"
