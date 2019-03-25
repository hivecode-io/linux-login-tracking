# Hivecode.io Linux login tracking

Simple bash script to be performed while login to get notification from Hivecode.io
While using it you can stay aware of each authorized/unauthorized login in your Linux server.

Notifications will be sent to you over:
* Slack
* Email
* SMS

To start tracking you need first to generate tracking URL at [Hivecode dashboard](https://hivecode.io/app/dashboard)

## Installing

### Step 1: Generate tracking URL

Create "Linux tracking solution" (section "custom solution") at [Hivecode dashboard](https://hivecode.io/app/dashboard). 
You will get a tracking URL (e.g. https://hivecode.io/asset/Pp/PpAyhFq97wAt) - copy it.

### Step 2: Copy login_notification.sh to your server

Download [login_notification.sh](login_notification.sh) and copy to your Linux server in directory: /etc/profile.d/login_tracking.sh

You can do it using this command:

```
curl -sSL https://raw.githubusercontent.com/hivecode-io/linux-login-tracking/master/login_notification.sh -o /etc/profile.d/hivecode.sh
```

Note: The "/etc/profile.d" directory to run login scripts varies for different Linux destributions. 
The current version has been tested on Debian and Ubuntu.

### Step 3: Modify login_notification.sh

Than replace TRACKING_URL with Hivecode generated URL

```
TRACKING_URL="replace_with_your_url"
```

Instead of "replace_with_your_url" paste copied while "Step 1" tracking URL.

Now you are done.

## How to use it

Once you installed to make sure you have at least one whitelisted IP in the "custom tracking" you created on "Step 1".
To make sure everything works fine, try to log in from unwhitelisted IP to your server and you should immediately get a notification about this login.

If you received notification => everything configured correctly. Enjoy using it.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details