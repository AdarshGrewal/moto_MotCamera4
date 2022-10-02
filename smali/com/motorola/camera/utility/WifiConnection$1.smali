.class public Lcom/motorola/camera/utility/WifiConnection$1;
.super Ljava/lang/Object;
.source "WifiConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/WifiConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/utility/WifiConnection;

.field public wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/WifiConnection;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v0, "wifi"

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/motorola/camera/utility/WifiConnection$1;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/motorola/camera/utility/WifiConnection$1;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    .line 4
    iget v3, v1, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    const/4 v2, 0x5

    if-ge v3, v2, :cond_b

    .line 5
    iget-object v1, v1, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/motorola/camera/fsm/ChangeEvent;

    .line 6
    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 7
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    .line 9
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    .line 11
    iget v3, v1, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eq v3, v2, :cond_2

    iget-object v3, v1, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v1, v5

    goto :goto_1

    .line 12
    :cond_2
    new-instance v3, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v3}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    .line 13
    iget-object v7, v1, Lcom/motorola/camera/utility/WifiConnection;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 14
    iget-boolean v7, v1, Lcom/motorola/camera/utility/WifiConnection;->mIsHidden:Z

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 15
    iget v7, v1, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v7

    if-eq v7, v2, :cond_4

    if-eq v7, v4, :cond_4

    if-eq v7, v6, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, v1, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    goto :goto_0

    .line 17
    :cond_4
    iget-object v1, v1, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 18
    :goto_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_a

    .line 19
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 20
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 21
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v8, 0x7f110072

    .line 22
    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    const/16 v18, 0x0

    const/4 v15, 0x4

    .line 23
    invoke-static {v15}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v7

    const/16 v8, 0x7d0

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_8

    if-eq v7, v6, :cond_7

    const/4 v4, 0x4

    if-eq v7, v4, :cond_5

    move v13, v3

    goto :goto_3

    .line 25
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v13, v4

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_2
    move v13, v2

    move-object v5, v8

    :goto_3
    if-nez v5, :cond_9

    const/16 v2, 0xfa0

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    :cond_9
    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v8, 0x1

    .line 29
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v19, 0x0

    move-object v7, v2

    move v9, v14

    invoke-direct/range {v7 .. v19}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 30
    sput-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_4

    .line 33
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, v0, Lcom/motorola/camera/utility/WifiConnection$1;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetworkSuggestions(Ljava/util/List;)I

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_ADD_NETWORKS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.WIFI_NETWORK_LIST"

    .line 38
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection$1;->this$0:Lcom/motorola/camera/utility/WifiConnection;

    .line 41
    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection;->mEventListener:Lcom/motorola/camera/EventListener;

    .line 42
    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    sget-object v3, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->WIFI_ADD_NETWORKS:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-direct {v2, v1, v5, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;)V

    invoke-interface {v0, v2}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_b
    :goto_4
    return-void
.end method
