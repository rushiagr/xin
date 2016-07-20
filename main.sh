function xin_docker() {
    LINUX=$(uname -a | grep -ci linux)
    UBUNTU=$(uname -a | grep -ci ubuntu)
    XENIAL=$(uname -a | grep -ci xenial)
    APPLE=$(uname -a | grep -ci darwin)
    TRUSTY=$(uname -a | grep -ci trusty)

    if [ $LINUX == 1 ]; then
        if [ $UBUNTU == 1 ]; then
            if [ $XENIAL == 1 ]; then
                echo 'xenial'
                # TODO(rushiagr): check uname -r to ensure correct linux version is present
                # TODO(rushiagr): don't add line to /etc/apt/sources.list.d/docker.list if already present
                sudo apt-get -y update
                sudo apt-get install -y apt-transport-https ca-certificates
                sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
                echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
                sudo apt-get -y update
                sudo apt-get -y purge lxc-docker
                apt-cache policy docker-engine
                sudo apt-get install -y linux-image-extra-$(uname -r)
                sudo apt-get install -y docker-engine
            elif [ $TRUSTY == 1 ]; then
                echo 'trusty'
            fi
        else
            echo 'not ubuntu'
        fi
    elif [ $APPLE == 1 ]; then
        echo 'apple'
    fi
}
