echo "Interface: "
read interface

echo "New Mac Adress: "
read address

ip link set dev $interface down
ip link set dev $interface address $address

ip link set dev $interface up

if [ $? -eq 0 ]; then
  echo "Succesfully changed address of $interface to $address"
else
  echo "An error occurred. Please double check your spelling."
  exit 1
fi
