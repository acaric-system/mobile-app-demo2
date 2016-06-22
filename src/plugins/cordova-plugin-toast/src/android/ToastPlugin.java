package com.acaric.prototype;

import android.widget.Toast;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

/**
 * 
 */
public class ToastPlugin extends CordovaPlugin {

    public boolean execute(String action, JSONArray args,
                           CallbackContext callbackContext) throws JSONException {
        callbackContext.success();
        android.widget.Toast.makeText(
                this.cordova.getActivity(), args.getString(0), Toast.LENGTH_LONG).show();

        return true;
    }

}
