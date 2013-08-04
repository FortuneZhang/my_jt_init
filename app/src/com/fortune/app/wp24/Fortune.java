package com.fortune.app.wp24;

import android.util.Log;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;


public class Fortune extends CordovaPlugin {
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {

        Log.e("--fortune", action);

        if (action.equalsIgnoreCase("test")) {

            Log.d("--fortune", "invoke");

            JSONArray jsonArray = new JSONArray();
            jsonArray.put(1);
            jsonArray.put(2);
            jsonArray.put(3);
            jsonArray.put(4);
            callbackContext.success(jsonArray);
            return true;

        }

        return false;
    }
}
