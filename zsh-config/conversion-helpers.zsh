function dec-to-hex() {
  echo "ibase=10;obase=16;$1" | bc
}

function dec-to-bin() {
  echo "ibase=10;obase=2;$1" | bc
}

function hex-to-dec() {
  echo "ibase=16;obase=A;$1" | bc
}

function hex-to-bin() {
  echo "ibase=16;obase=2;$1" | bc
}

function bin-to-hex() {
  echo "ibase=2;obase=10000;$1" | bc
}

function bin-to-dec() {
  echo "ibase=2;obase=A;$1" | bc
}