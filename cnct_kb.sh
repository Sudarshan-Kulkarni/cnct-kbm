CONNECT_KB=$1
CONNECT_M=$2

# KB_ADDR=
# M_ADDR=

connect_device(){
    DEVICE_ADDR=$1
    echo $DEVICE_ADDR
    res=$(/opt/homebrew/bin/blueutil --is-connected $DEVICE_ADDR)
    if [[ "$res" = '1' ]]
    then
    /opt/homebrew/bin/blueutil --unpair $DEVICE_ADDR
    else
    /opt/homebrew/bin/blueutil --unpair $DEVICE_ADDR
    sleep 1
    /opt/homebrew/bin/blueutil --pair $DEVICE_ADDR
    sleep 1
    /opt/homebrew/bin/blueutil --connect $DEVICE_ADDR
    fi
}

if [[ "$CONNECT_KB" = "y" ]]
then 
    connect_device $KB_ADDR
fi 

if [[ "$CONNECT_M" = "y" ]]
then 
    connect_device $M_ADDR
fi 

