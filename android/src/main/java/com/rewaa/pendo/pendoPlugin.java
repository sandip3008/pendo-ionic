package com.rewaa.pendo;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.util.HashMap;
import sdk.pendo.io.Pendo;

@CapacitorPlugin(name = "pendo")
public class pendoPlugin extends Plugin {

    private pendo implementation = new pendo();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }

    @PluginMethod
    public void startSession(PluginCall call) {
        String visitorId = call.getString("visitorId");
        String accountId = call.getString("accountId");
//        String visitorData = call.getString("visitorData");
//        String accountData = call.getString("accountData");

        // send Visitor Level Data
        HashMap<String, Object> visitorData = new HashMap<>();
        visitorData.put("age", 27);
        visitorData.put("country", "USA");

// send Account Level Data
        HashMap<String, Object> accountData = new HashMap<>();
        accountData.put("Tier", 1);
        accountData.put("Size", "Enterprise");

        Pendo.startSession(
                visitorId,
                accountId,
                visitorData,
                accountData
        );

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(visitorId));
        call.resolve(ret);
    }

}
