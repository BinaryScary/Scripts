case $BLOCK_BUTTON in
    1) terminator -e 'yaourt -Syua --noconfirm && checkupdates | wc -l > ~/.pacupgrnum && pkill -RTMIN+8 i3blocks' ;;
esac

checkupdates | wc -l | sed -e '/^0$/d' > ~/.pacupgrnum && pkill -RTMIN+8 i3blocks

sed -e "/^$/d" ~/.pacupgrnum
