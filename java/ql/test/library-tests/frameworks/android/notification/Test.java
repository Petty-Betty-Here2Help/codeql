package generatedtest;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.Notification.Action;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Bundle;

// Test case generated by GenerateFlowTestCase.ql
public class Test {

	Object getMapKeyDefault(Bundle container) {
		return null;
	}

	Object getMapValueDefault(Bundle container) {
		return container.get("key");
	}

	Bundle newWithMapKeyDefault(Object element) {
		Bundle bundle = new Bundle();
		bundle.putString((String) element, null);
		return bundle;
	}

	Bundle newWithMapValueDefault(Object element) {
		Bundle bundle = new Bundle();
		bundle.putString("key", (String) element);
		return bundle;
	}

	Object source() {
		return null;
	}

	void sink(Object o) {}

	public void test() throws Exception {

		{
			// "android.app;Notification$Action$Builder;true;Builder;(Action);;Argument[0];Argument[-1];taint;manual"
			Notification.Action.Builder out = null;
			Notification.Action in = (Notification.Action) source();
			out = new Notification.Action.Builder(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;Builder;(Icon,CharSequence,PendingIntent);;Argument[2];Argument[-1];taint;manual"
			Notification.Action.Builder out = null;
			PendingIntent in = (PendingIntent) source();
			out = new Notification.Action.Builder((Icon) null, (CharSequence) null, in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;Builder;(int,CharSequence,PendingIntent);;Argument[2];Argument[-1];taint;manual"
			Notification.Action.Builder out = null;
			PendingIntent in = (PendingIntent) source();
			out = new Notification.Action.Builder(0, (CharSequence) null, in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;addExtras;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.addExtras(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;addExtras;;;MapKey of
			// Argument[0];MapKey of SyntheticField[android.content.Intent.extras] of
			// Argument[-1];value;manual"
			Notification.Action.Builder out = null;
			Bundle in = (Bundle) newWithMapKeyDefault(source());
			out.addExtras(in);
			sink(getMapKeyDefault(out.getExtras())); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;addExtras;;;MapValue of
			// Argument[0];MapValue of SyntheticField[android.content.Intent.extras]
			// of Argument[-1];value;manual"
			Notification.Action.Builder out = null;
			Bundle in = (Bundle) newWithMapValueDefault(source());
			out.addExtras(in);
			sink(getMapValueDefault(out.getExtras())); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;addRemoteInput;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.addRemoteInput(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;build;;;Argument[-1];ReturnValue;taint;manual"
			Notification.Action out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.build();
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;build;;;SyntheticField[android.content.Intent.extras]
			// of Argument[-1];SyntheticField[android.content.Intent.extras] of ReturnValue;value;manual"
			Notification.Action out = null;
			Notification.Action.Builder builder = null;
			Bundle in = (Bundle) newWithMapValueDefault(source());
			builder.addExtras(in);
			out = builder.build();
			sink(getMapValueDefault(out.getExtras())); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;extend;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.extend(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;getExtras;;;SyntheticField[android.content.Intent.extras]
			// of Argument[-1];ReturnValue;value;manual"
			Bundle out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.getExtras();
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;setAllowGeneratedReplies;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.setAllowGeneratedReplies(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;setAuthenticationRequired;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.setAuthenticationRequired(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;setContextual;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.setContextual(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action$Builder;true;setSemanticAction;;;Argument[-1];ReturnValue;value;manual"
			Notification.Action.Builder out = null;
			Notification.Action.Builder in = (Notification.Action.Builder) source();
			out = in.setSemanticAction(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Action;true;Action;(int,CharSequence,PendingIntent);;Argument[2];Argument[-1];taint;manual"
			Notification.Action out = null;
			PendingIntent in = (PendingIntent) source();
			out = new Notification.Action(0, null, in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;addAction;(Action);;Argument[0];Argument[-1];taint;manual"
			Notification.Builder out = null;
			Notification.Action in = (Notification.Action) source();
			out.addAction(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;addAction;(int,CharSequence,PendingIntent);;Argument[2];Argument[-1];taint;manual"
			Notification.Builder out = null;
			PendingIntent in = (PendingIntent) source();
			out.addAction(0, null, in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;addAction;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.addAction(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;addAction;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.addAction(0, null, null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;addExtras;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.addExtras(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;addExtras;;;MapKey of Argument[0];MapKey of
			// SyntheticField[android.content.Intent.extras] of Argument[-1];value;manual"
			Notification.Builder out = null;
			Bundle in = (Bundle) newWithMapKeyDefault(source());
			out.addExtras(in);
			sink(getMapKeyDefault(out.getExtras())); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;addExtras;;;MapValue of Argument[0];MapValue
			// of SyntheticField[android.content.Intent.extras] of Argument[-1];value;manual"
			Notification.Builder out = null;
			Bundle in = (Bundle) newWithMapValueDefault(source());
			out.addExtras(in);
			sink(getMapValueDefault(out.getExtras())); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;addPerson;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.addPerson((String) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;addPerson;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.addPerson((Person) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;build;;;Argument[-1];ReturnValue;taint;manual"
			Notification out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.build();
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;build;;;SyntheticField[android.content.Intent.extras]
			// of Argument[-1];Field[android.app.Notification.extras] of ReturnValue;value;manual"
			Notification out = null;
			Notification.Builder builder = null;
			Bundle in = (Bundle) newWithMapValueDefault(source());
			builder.addExtras(in);
			out = builder.build();
			sink(getMapValueDefault(out.extras)); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;extend;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.extend(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;getExtras;;;SyntheticField[android.content.Intent.extras]
			// of Argument[-1];ReturnValue;value;manual"
			Bundle out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.getExtras();
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;recoverBuilder;;;Argument[1];ReturnValue;taint;manual"
			Notification.Builder out = null;
			Notification in = (Notification) source();
			out = Notification.Builder.recoverBuilder(null, in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;setActions;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setActions((Notification.Action[]) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setActions;;;ArrayElement of
			// Argument[0];Argument[-1];taint;manual"
			Notification.Builder out = null;
			Notification.Action[] in = (Notification.Action[]) new Notification.Action[] {
					(Notification.Action) source()};
			out.setActions(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;setAutoCancel;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setAutoCancel(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setBadgeIconType;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setBadgeIconType(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setBubbleMetadata;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setBubbleMetadata(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setCategory;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setCategory(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setChannelId;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setChannelId(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setChronometerCountDown;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setChronometerCountDown(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setColor;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setColor(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setColorized;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setColorized(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setContent;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setContent(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setContentInfo;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setContentInfo(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setContentIntent;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setContentIntent(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setContentIntent;;;Argument[0];Argument[-1];taint;manual"
			Notification.Builder out = null;
			PendingIntent in = (PendingIntent) source();
			out.setContentIntent(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;setContentText;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setContentText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setContentTitle;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setContentTitle(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setCustomBigContentView;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setCustomBigContentView(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setCustomHeadsUpContentView;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setCustomHeadsUpContentView(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setDefaults;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setDefaults(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setDeleteIntent;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setDeleteIntent(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setDeleteIntent;;;Argument[0];Argument[-1];taint;manual"
			Notification.Builder out = null;
			PendingIntent in = (PendingIntent) source();
			out.setDeleteIntent(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;setExtras;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setExtras(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setExtras;;;Argument[0];SyntheticField[android.content.Intent.extras]
			// of Argument[-1];value;manual"
			Notification.Builder out = null;
			Bundle in = (Bundle) source();
			out.setExtras(in);
			sink(out.getExtras()); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setFlag;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setFlag(0, false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setForegroundServiceBehavior;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setForegroundServiceBehavior(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setFullScreenIntent;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setFullScreenIntent(null, false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setGroup;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setGroup(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setGroupAlertBehavior;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setGroupAlertBehavior(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setGroupSummary;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setGroupSummary(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setLargeIcon;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setLargeIcon((Icon) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setLargeIcon;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setLargeIcon((Bitmap) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setLights;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setLights(0, 0, 0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setLocalOnly;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setLocalOnly(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setLocusId;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setLocusId(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setNumber;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setNumber(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setOngoing;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setOngoing(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setOnlyAlertOnce;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setOnlyAlertOnce(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setPriority;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setPriority(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setProgress;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setProgress(0, 0, false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setPublicVersion;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setPublicVersion(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setPublicVersion;;;Argument[0];Argument[-1];taint;manual"
			Notification.Builder out = null;
			Notification in = (Notification) source();
			out.setPublicVersion(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$Builder;true;setRemoteInputHistory;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setRemoteInputHistory(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSettingsText;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSettingsText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setShortcutId;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setShortcutId(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setShowWhen;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setShowWhen(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSmallIcon;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSmallIcon(0, 0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSmallIcon;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSmallIcon(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSmallIcon;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSmallIcon((Icon) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSortKey;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSortKey(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSound;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSound(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSound;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSound((Uri) null, 0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSound;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSound((Uri) null, (AudioAttributes) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setStyle;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setStyle(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setSubText;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setSubText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setTicker;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setTicker(null, null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setTicker;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setTicker(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setTimeoutAfter;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setTimeoutAfter(0L);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setUsesChronometer;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setUsesChronometer(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setVibrate;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setVibrate(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setVisibility;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setVisibility(0);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Builder;true;setWhen;;;Argument[-1];ReturnValue;value;manual"
			Notification.Builder out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = in.setWhen(0L);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$Style;true;build;;;Argument[-1];ReturnValue;taint;manual"
			Notification out = null;
			Notification.Style in = (Notification.Style) source();
			out = in.build();
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;BigPictureStyle;(Builder);;Argument[0];Argument[-1];taint;manual"
			Notification.BigPictureStyle out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = new Notification.BigPictureStyle(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;bigLargeIcon;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigPictureStyle in = (Notification.BigPictureStyle) source();
			Notification.BigPictureStyle out = in.bigLargeIcon((Icon) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;bigPicture;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigPictureStyle in = (Notification.BigPictureStyle) source();
			Notification.BigPictureStyle out = in.bigPicture((Bitmap) null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;setBigContentTitle;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigPictureStyle in = (Notification.BigPictureStyle) source();
			Notification.BigPictureStyle out = in.setBigContentTitle(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;setContentDescription;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigPictureStyle in = (Notification.BigPictureStyle) source();
			Notification.BigPictureStyle out = in.setContentDescription(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;setSummaryText;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigPictureStyle in = (Notification.BigPictureStyle) source();
			Notification.BigPictureStyle out = in.setSummaryText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigPictureStyle;true;showBigPictureWhenCollapsed;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigPictureStyle in = (Notification.BigPictureStyle) source();
			Notification.BigPictureStyle out = in.showBigPictureWhenCollapsed(false);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigTextStyle;true;BigTextStyle;(Builder);;Argument[0];Argument[-1];taint;manual"
			Notification.BigTextStyle out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = new Notification.BigTextStyle(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$BigTextStyle;true;bigText;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigTextStyle in = (Notification.BigTextStyle) source();
			Notification.BigTextStyle out = in.bigText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigTextStyle;true;setBigContentTitle;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigTextStyle in = (Notification.BigTextStyle) source();
			Notification.BigTextStyle out = in.setBigContentTitle(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$BigTextStyle;true;setSummaryText;;;Argument[-1];ReturnValue;value;manual"
			Notification.BigTextStyle in = (Notification.BigTextStyle) source();
			Notification.BigTextStyle out = in.setSummaryText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$InboxStyle;true;InboxStyle;(Builder);;Argument[0];Argument[-1];taint;manual"
			Notification.InboxStyle out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = new Notification.InboxStyle(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$InboxStyle;true;addLine;;;Argument[-1];ReturnValue;value;manual"
			Notification.InboxStyle in = (Notification.InboxStyle) source();
			Notification.InboxStyle out = in.addLine(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$InboxStyle;true;setBigContentTitle;;;Argument[-1];ReturnValue;value;manual"
			Notification.InboxStyle in = (Notification.InboxStyle) source();
			Notification.InboxStyle out = in.setBigContentTitle(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$InboxStyle;true;setSummaryText;;;Argument[-1];ReturnValue;value;manual"
			Notification.InboxStyle in = (Notification.InboxStyle) source();
			Notification.InboxStyle out = in.setSummaryText(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$MediaStyle;true;MediaStyle;(Builder);;Argument[0];Argument[-1];taint;manual"
			Notification.MediaStyle out = null;
			Notification.Builder in = (Notification.Builder) source();
			out = new Notification.MediaStyle(in);
			sink(out); // $ hasTaintFlow
		}
		{
			// "android.app;Notification$MediaStyle;true;setMediaSession;;;Argument[-1];ReturnValue;value;manual"
			Notification.MediaStyle in = (Notification.MediaStyle) source();
			Notification.MediaStyle out = in.setMediaSession(null);
			sink(out); // $ hasValueFlow
		}
		{
			// "android.app;Notification$MediaStyle;true;setShowActionsInCompactView;;;Argument[-1];ReturnValue;value;manual"
			Notification.MediaStyle in = (Notification.MediaStyle) source();
			Notification.MediaStyle out = in.setShowActionsInCompactView(null);
			sink(out); // $ hasValueFlow
		}
	}

}
