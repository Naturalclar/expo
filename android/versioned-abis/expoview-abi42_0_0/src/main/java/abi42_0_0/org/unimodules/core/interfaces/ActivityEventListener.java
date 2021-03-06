package abi42_0_0.org.unimodules.core.interfaces;

import android.app.Activity;
import android.content.Intent;

public interface ActivityEventListener {
  public void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data);

  // Called when a new intent is passed to the activity
  public void onNewIntent(Intent intent);
}
