{
echo "===== Systen Info ====="
uname -a
cat /etc/*release

echo -e "\n===== Installed Packages ====="
dpkg -l

echo -e "\n===== Running Processes ====="
ps aux

echo -e "\n===== Open Ports ====="
ss -tuln
} > info 
