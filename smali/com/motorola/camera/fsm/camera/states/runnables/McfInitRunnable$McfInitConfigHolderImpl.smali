.class public Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$McfInitConfigHolderImpl;
.super Ljava/lang/Object;
.source "McfInitRunnable.java"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McfInitConfigHolderImpl"
.end annotation


# instance fields
.field public mPlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration()[B
    .locals 6

    .line 1
    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_OVERRIDE_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 4
    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 8
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$McfInitConfigHolderImpl;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p0

    .line 10
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "McfInitRunnable"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMcfConfig dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MCF configuration is invalid"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    return-object p0
.end method

.method public getDebugLogDDMask()I
    .locals 2

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$McfInitConfigHolderImpl;->mPlatform:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 3
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$McfInitConfigHolderImpl;->mPlatform:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$McfInitConfigHolderImpl;->mPlatform:Ljava/lang/String;

    return-object p0
.end method

.method public getTuningConfiguration()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfInitRunnable$McfInitConfigHolderImpl;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/shared/McfUtil;->readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
