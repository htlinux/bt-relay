package com.andyolivares.btrelay;

import java.util.Calendar;

import android.os.Bundle;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TimePicker;

public class MainActivity extends Activity {

	private static final String ADDRESS = "00:11:10:09:08:76";
	
	private Button btnToggle;
	private Button btnToggleAt;
	private Button btnTurnOn;
	private Button btnTurnOff;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_activity);
			
		Intent intent = new Intent(MainActivity.this, BTRelayService.class);
		intent.setAction(BTRelayService.ACTION_CONNECT);
		intent.putExtra(BTRelayService.PARAM_DEVICE_ADDRESS, ADDRESS);
		startService(intent);
		
		btnToggle = (Button)findViewById(R.id.btnToggle);
		btnToggle.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				sendCommand(new byte[] { (byte) 0xAA, 0x02, 0x00, 0x02, 0x02});
			}
		});
		
		btnToggleAt = (Button)findViewById(R.id.btnToggleAt);
		btnToggleAt.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				LayoutInflater inflater = getLayoutInflater();
				View pickerRoot = inflater.inflate(R.layout.numeric_picker, null);
				final TimePicker picker = (TimePicker)pickerRoot.findViewById(R.id.timePicker1);
				
				AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
				builder.setTitle(R.string.toggle_relay_at);
				builder.setView(pickerRoot);
				builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						Calendar cal = getFutureDate(picker.getCurrentHour(), picker.getCurrentMinute());
						
						Log.i("Alarm Set At", cal.getTime().toString());
						
						AlarmManager am = (AlarmManager)getSystemService(ALARM_SERVICE);
						Intent i = new Intent(MainActivity.this, AlarmReceiver.class);
						i.setAction(AlarmReceiver.ACTION_ALARM);
						PendingIntent pi = PendingIntent.getBroadcast(MainActivity.this, 0, i, PendingIntent.FLAG_CANCEL_CURRENT);
						
						am.set(AlarmManager.RTC_WAKEUP, cal.getTimeInMillis(), pi);
						
						dialog.dismiss();
					}
				});
				builder.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						dialog.dismiss();
					}
				});
				
				builder.create().show();
			}
		});
		
		btnTurnOn = (Button)findViewById(R.id.btnTurnOn);
		btnTurnOn.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				sendCommand(new byte[] { (byte) 0xAA, 0x02, 0x00, 0x01, 0x01});
			}
		});
		
		btnTurnOff = (Button)findViewById(R.id.btnTurnOff);
		btnTurnOff.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				sendCommand(new byte[] { (byte) 0xAA, 0x02, 0x00, 0x00, 0x00});
			}
		});
	}
	
	private Calendar getFutureDate(int hour, int minute) {
		Calendar currentDate = Calendar.getInstance();
		Calendar futureDate = Calendar.getInstance();
		
		futureDate.setLenient(false);
		futureDate.set(Calendar.HOUR_OF_DAY, hour);
		futureDate.set(Calendar.MINUTE, minute);
		futureDate.set(Calendar.SECOND, 0);
		
		if (futureDate.compareTo(currentDate) <= 0) {
			futureDate.add(Calendar.DAY_OF_MONTH, 1);
		}
		
		return futureDate;
	}
	
	private void sendCommand(byte[] command) {
		Intent intent = new Intent(MainActivity.this, BTRelayService.class);
		intent.setAction(BTRelayService.ACTION_SEND_COMMAND);
		intent.putExtra(BTRelayService.PARAM_COMMAND, command);
		startService(intent);
	}

}
