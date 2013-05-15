package com.andyolivares.btrelay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AlarmReceiver extends BroadcastReceiver {

	public static final String ACTION_ALARM = "btRelayAlarm";
	
	@Override
	public void onReceive(Context context, Intent intent) {
		if (context == null || intent == null)
			return;
		
		if (intent.getAction().equals(ACTION_ALARM)) {
			Intent i = new Intent(context, BTRelayService.class);
			i.setAction(BTRelayService.ACTION_SEND_COMMAND);
			i.putExtra(BTRelayService.PARAM_COMMAND, new byte[] { (byte) 0xAA, 0x02, 0x00, 0x02, 0x02});
			
			context.startService(i);
		}
	}

}
