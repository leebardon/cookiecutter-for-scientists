DIR=~/.julia/config/

check_packages () {
    if [ ! grep -R "OhMyREPL" $DIR/startup.jl] ;
    then
        cat $PWD/startup.jl >> $DIR/startup.jl
    fi
}

check_config_dir_exists () {
    if [ ! -d $DIR ];
    then
        cd ~/.julia && mkdir $DIR
    fi
}

check_file_exists () {
    if [ ! -f $DIR/startup.jl ];
    then
        cp $PWD/startup.jl $DIR
    else
        check_packages
    fi
}

check_config_dir_exists
check_file_exists