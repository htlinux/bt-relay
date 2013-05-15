package com.andyolivares.btrelay;

import java.io.OutputStream;
import java.util.UUID;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;

public class BTRelayService extends Service {

	public static final String ACTION_CONNECT = "btRelayConnect";
	public static final String ACTION_SEND_COMMAND = "btRelaySendCommand";
	
	public static final String PARAM_DEVICE_ADDRESS = "btRelayDeviceAddr";
	public static final String PARAM_COMMAND = "btRelayCommand";
	
	private static final UUID SPP_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
	
	private BluetoothAdapter mBTAdapter = null;
	private BluetoothDevice mBTDevice = null;
	private BluetoothSocket mBTSocket = null;
	
	private boolean mConnected = false;
		
	@Override
	public IBinder onBind(Intent arg0) {
		return null;
	}
	
	@Override
	public void onCreate() {
		super.onCreate();
		
		mBTAdapter = BluetoothAdapter.getDefaultAdapter();
		
		if (mBTAdapter == null)
			stopSelf();
	}
	
	@Override
	public void onStart(Intent intent, int startId) {
	    handleCommand(intent);
	}
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		handleCommand(intent);
		
		return START_STICKY;
	}
		
	@Override
	public void onDestroy() {
		super.onDestroy();
		
		mBTAdapter = null;
	}

	/* Private Functions */
	
	private void handleCommand(Intent intent) {
		if (intent == null)
			return;
		
		if (intent.getAction().equals(ACTION_CONNECT)) {
			connect(intent);
			return;
		}
		
		if (intent.getAction().equals(ACTION_SEND_COMMAND)) {
			sendCommand(intent);
			return;
		}
	}
	
	private void connect(Intent intent) {
		if (mConnected)
			return;
		
		String deviceAddress = intent.getStringExtra(PARAM_DEVICE_ADDRESS);
		
		if (deviceAddress != null) {
			try
			{
				mBTDevice = mBTAdapter.getRemoteDevice(deviceAddress);
				mBTAdapter.cancelDiscovery();
				
				mBTSocket = mBTDevice.createRfcommSocketToServiceRecord(SPP_UUID);
				mBTSocket.connect();
				
				mConnected = true;
			}
			catch (Exception e)
			{
				mConnected = false;
				
				error("No se pudo conectar al dispositivo Bluetooth", e);
				stopSelf();
			}
		}
	}
	
	private void sendCommand(Intent intent) {
		byte[] commandByteArray = intent.getByteArrayExtra(PARAM_COMMAND);
		
		if (commandByteArray != null) {
			new AsyncTask<byte[], Void, byte[]>() {

				@Override
				protected byte[] doInBackground(byte[]... params) {
					
					if (!mConnected)
						return null;
					
					if (mBTSocket != null) {
						try
						{
							byte[] command = params[0];
							
							if (command != null) {
								OutputStream os = mBTSocket.getOutputStream();
																
								os.write(command);
								os.flush();
							}
						}
						catch (Exception e) {
							error("No se pudo enviar el comando al dispositivo Bluetooth", e);
						}
					}
					
					return null;
				}
				
			}.execute(commandByteArray);
		}
	}
	
	private void error(final String msg, Throwable e) {
		new Handler().post(new Runnable() {
			
			@Override
			public void run() {
				Toast.makeText(BTRelayService.this, msg, Toast.LENGTH_LONG).show();				
			}
			
		});
		
		Log.d("BTRelayService.error()", msg, e);
	}
}
