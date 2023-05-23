#!/bin/bash

echo "#!/bin/bash" > ~/test-script.sh
echo "echo \"hello \$(date)\" >> ~/test-file-\$(date +\"%d-%m-%Y\")" >> ~/test-script.sh

chmod +x ~/test-script.sh

crontab -l > ~/tmp-cron && echo '*/2 * * * * ~/test-script.sh 2>~/cron_err' >> ~/tmp-cron && crontab ~/tmp-cron
rm ~/tmp-cron
