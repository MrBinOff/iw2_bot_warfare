init()
{
	level.clientid = 0;

	level thread onPlayerConnect();

	level thread maps\mp\bots\_bot::init();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill("connecting", player);

		player.clientid = level.clientid;
		level.clientid++;	// Is this safe? What if a server runs for a long time and many people join/leave
	}
}
