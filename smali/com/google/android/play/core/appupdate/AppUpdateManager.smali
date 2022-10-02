.class public interface abstract Lcom/google/android/play/core/appupdate/AppUpdateManager;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# virtual methods
.method public abstract completeUpdate()Lcom/google/android/play/core/tasks/zzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation
.end method

.method public abstract getAppUpdateInfo()Lcom/google/android/play/core/tasks/zzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/zzm;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
.end method

.method public abstract startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V
.end method
