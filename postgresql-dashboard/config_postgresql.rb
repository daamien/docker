# PostgreSQL Dashboard config file
{

# Connection
'host' 		=> '127.0.0.1',
'port' 		=> '5432',
'options' 	=> '',  # Backend options 
'tty'  		=> '',     # Obsolete
'dbname' 	=> 'demo',
'user'   	=> 'demo',
'password'	=> 'demo',

# Scheduler
'freq' 		=> '60s',

# Twitter
# Get your twitter keys & secrets:
# https://dev.twitter.com/docs/auth/tokens-devtwittercom
'tw_consumer_key' 	 => 'YOUR_CONSUMER_KEY',
'tw_consumer_secret' 	 => 'YOUR_CONSUMER_SECRET',
'tw_config.access_token' => 'YOUR_OAUTH_TOKEN',
'tw_access_token_secret' => 'YOUR_OAUTH_SECRET'

}
