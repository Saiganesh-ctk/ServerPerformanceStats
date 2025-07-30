echo "######################"
echo "# System Update Info #"
echo "######################"

uptime

echo "##################"
echo "#Total Cpu Usage#"
echo "##################"

top -bn1 | grep "%Cpu(s):" | cut -d ',' -f 4 | awk '{print "Usage: " 100-$1 "%"}'
