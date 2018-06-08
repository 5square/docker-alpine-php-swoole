export PATH=$PATH:~/bin

export GOSS_FILES_PATH=test
export GOSS_OPTS="--max-concurrent=1"
export GOSS_PATH=~/bin/goss
export GOSS_FILES_STRATEGY=cp

case $1 in
  junit)
    mkdir -p ~/reports/goss
    export GOSS_OPTS="$GOSS_OPTS --format junit"
    test/dgoss run ${CIRCLE_PROJECT_REPONAME} > ~/reports/goss/report.xml
    ;;
  *)
    test/dgoss run ${CIRCLE_PROJECT_REPONAME}
    ;;
esac