if [ ! -n "$WERCKER_OBS_RUNSERVICE_TOKEN" ]; then
    fail 'Please specify token property'
fi

API_URL="$WERCKER_OBS_RUNSERVICE_URL/trigger/runservice"

if [ ! -z "$WERCKER_OBS_RUNSERVICE_PROJECT" -a ! -z "$WERCKER_OBS_RUNSERVICE_PACKAGE" ]; then
    API_URL="$API_URL?project=$WERCKER_OBS_RUNSERVICE_PROJECT&package=$WERCKER_OBS_RUNSERVICE_PACKAGE"
fi

curl -X POST -H "Authorization: Token $WERCKER_OBS_RUNSERVICE_TOKEN" $API_URL