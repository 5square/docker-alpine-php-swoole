export GOSS_FILES_PATH=test
export GOSS_OPTS="--max-concurrent=1"

case $1 in
  junit)
    mkdir -p ./reports/goss
    export GOSS_OPTS="$GOSS_OPTS --format junit"
    dgoss run ${CIRCLE_PROJECT_REPONAME} > ./reports/goss/report.xml
    ;;
  *)
    dgoss run ${CIRCLE_PROJECT_REPONAME}
    ;;
esac