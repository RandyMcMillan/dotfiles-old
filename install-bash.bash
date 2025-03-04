#!/usr/bin/env bash
addPath() {
    echo "Adding $1 to PATH";
    chmod +x $1
    export PATH="$PATH:$1";
}
export -f addPath

install-bash-infinity() {
mkdir -p /usr/local/bin

if [ ! -d "${BASH_SOURCE[0]%/*}"/bin/bash-oo-framework ]; then \
    git clone https://github.com/niieani/bash-oo-framework.git bin/bash-oo-framework
fi
source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/bin/bash-oo-framework/lib/oo-bootstrap.sh"

#!/usr/bin/env bash
import util/log
import util/exception
import util/tryCatch
import util/namedParameters
import util/variable
import util/type
import util/class


}

install-bash() {

    if hash brew 2>/dev/null; then
        brew install -f bash-completion bash
    else

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
        install-bash

    fi
}
install-bash
install-bash-infinity

