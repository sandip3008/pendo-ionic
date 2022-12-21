package com.rewaa.pendo;

import android.app.Application;

import sdk.pendo.io.Pendo;


public class PendoApp extends Application {
    private static PendoApp singleton;

    String pendoAppKey = "eyJhbGciOiJSUzI1NiIsImtpZCI6IiIsInR5cCI6IkpXVCJ9.eyJkYXRhY2VudGVyIjoidXMiLCJrZXkiOiJlODJjYzA4MTJlMjlkNDAwMDVmYTEwNWIxMDgwYTcyNzlmNjI1MzcwYzJiNzdjNTk2NjZkZjU0NzhhMDczNjk5YmRhOWE2YjBjM2E5ZDcyN2FhZDIyYjRkNzMzY2QxMWMwMzQ5NDExN2E4MmU3ZDNkMDg4NTU0MDA1NDUwOGU0YmRlOWRiMjc0MmRmNDlmZTAzMmI2MmRlMDViMTMzZjA0LjE2M2EwMmIwOGJiYzhkMDBkMGI0NmMwNDljZGY0MGM5LmI5NWJhYWIyOWY3ZDU4OTI5MzYxMzY5OWU2ZTA5NmM5N2ZjOGYzY2U4MzliOGZmZjhlYzNmYzFiYTRhNjM3ODIifQ.rZ5wQSXdYwd56e8KMMcmc1Bf2u-bHmnoqPMY_C96QkeNPS_r8TDD0r3yQqeXY5Xb1Qp1oTiWt0WSYWBP6bJMZGvGnmsBR_nQVw_DX6A2NvEnCl6L6OyuJyAnPEIj8Nb_uXQh6W7N9mTTWuXKacWmXzmtnIwDz_TY3CiknmGW6CA";

    public PendoApp getInstance(){
        return singleton;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        singleton = this;

        Pendo.setup(
                this,
                pendoAppKey,
                null,
                null
        );
    }
}
