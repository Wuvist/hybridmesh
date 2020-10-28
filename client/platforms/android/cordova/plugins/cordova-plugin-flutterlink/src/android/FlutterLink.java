package com.blogwind.flutterlink;

import android.app.Activity;

import com.blogwind.hybridmesh.FlutterMainActivity;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;


/**
 * This class echoes a string called from JavaScript.
 */
public class FlutterLink extends CordovaPlugin {
    public static Activity cordovaActivity;

    public static void setCordovaActivity(Activity context) {
        cordovaActivity = context;
    }

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("openFlutter")) {
            String message = args.getString(0);
            this.openFlutter(message, callbackContext);
            return true;
        }
        return false;
    }

    private void openFlutter(String message, CallbackContext callbackContext) {
        if (message != null) {
            cordovaActivity.startActivity(
                    FlutterMainActivity.withCachedEngine("my_engine_id").build(cordovaActivity)
            );
            callbackContext.success();
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }
}
