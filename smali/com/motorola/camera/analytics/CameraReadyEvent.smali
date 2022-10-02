.class public Lcom/motorola/camera/analytics/CameraReadyEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "CameraReadyEvent.java"


# static fields
.field public static final AMZ_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_USE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROBE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAM:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAMAVL:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAMTHRS:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SECUREMODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "AMZENAB"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->AMZ_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAM"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAM:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 5
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    const-string v1, "LASTUSE"

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->LAST_USE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 6
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "PROBE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->PROBE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 7
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "RAMPSREXP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 8
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAMAVL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 9
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "RAMTHRS"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public addData(Lcom/google/android/exoplayer2/FormatHolder;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p0

    const-string p3, "USECASE"

    const-string v0, "USECASE"

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "STARTUP"

    const-string v0, "STARTUP"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "evttme"

    const-string v0, "evttme"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "COLD"

    const-string v0, "COLD"

    .line 5
    iget-object v1, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    check-cast v1, [B

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "LAUNCHEDBY"

    const-string v0, "LAUNCHEDBY"

    const-string v1, "INITIALIZED"

    .line 8
    iget-object v2, p1, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    check-cast v2, [B

    monitor-enter v2

    .line 9
    :try_start_1
    iget-object v4, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "QLNCH"

    .line 11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 16
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ON"

    goto :goto_0

    :cond_0
    const-string v0, "OFF"

    goto :goto_0

    :cond_1
    const-string v0, "NS"

    .line 19
    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p3, Lcom/motorola/camera/analytics/CameraReadyEvent;->SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p3, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 21
    invoke-virtual {p3, p2, p0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    const-string p0, "SERVICEMODE"

    .line 22
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_2

    .line 23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    const/4 p3, 0x0

    if-eqz p0, :cond_3

    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    if-nez v0, :cond_4

    const-string v0, "SERVICEMODE"

    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    :cond_4
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->FACING:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    const-string v0, "IS_CLI_DISPLAY"

    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 28
    invoke-static {v0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 29
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 30
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->AMZ_ENABLED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 31
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 32
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAM:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 33
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 34
    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 36
    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 37
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->LAST_USE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_LAST_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 38
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast v1, Ljava/lang/Long;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;

    .line 40
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    .line 41
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->PROBE:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, p3

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    :goto_2
    or-int/2addr v1, p3

    .line 43
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontCamera()Z

    move-result v2

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 45
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 46
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 47
    iget-object v1, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 50
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 51
    iget-object v1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 54
    sget-object p0, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    check-cast p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 55
    iget-object v1, p0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->mName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/FormatHolder;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "LNCH"

    .line 58
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "NOT_LAUNCH"

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "LNCH"

    .line 60
    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p0, "COLD"

    .line 61
    invoke-virtual {p1, p0, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "STARTUP"

    const-wide/16 p2, -0x1

    .line 62
    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    const-string p0, "evttme"

    .line 63
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 64
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 65
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "2.6"

    return-object p0
.end method

.method public setupSessionValues(Lcom/google/android/exoplayer2/FormatHolder;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    const-string v0, "Camera"

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Camcorder"

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    const-string v3, "SEQID"

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/exoplayer2/FormatHolder;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v1

    .line 6
    iget-object v2, v1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v3, "TRAY"

    const-string v4, "AOV"

    const-string v5, "LOCK"

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v6, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v3, "NOT_LAUNCH"

    goto/16 :goto_7

    :cond_2
    const/4 v8, 0x1

    .line 8
    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    const-string v9, "android.intent.action.CAMERA_BUTTON"

    .line 10
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v3, "BTN"

    goto/16 :goto_7

    .line 11
    :cond_3
    invoke-static {v6}, Lcom/motorola/camera/settings/CaptureIntent;->isPhotoCaptureAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Lcom/motorola/camera/settings/CaptureIntent;->isVideoCaptureAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    move v9, v7

    goto :goto_1

    :cond_5
    :goto_0
    move v9, v8

    :goto_1
    const-string v10, "motorola.intent.extra.CALLER"

    if-eqz v9, :cond_e

    const/4 v3, 0x0

    const-string v6, "com.android.systemui.camera_launch_source"

    .line 12
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {v2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 15
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_2
    if-nez v3, :cond_9

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v2

    if-nez v2, :cond_f

    .line 17
    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isGoogleAssistantLaunch()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_6

    :cond_8
    :goto_3
    move-object v3, v5

    goto/16 :goto_7

    :cond_9
    const/4 v1, -0x1

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_4
    move v7, v1

    goto :goto_5

    :sswitch_0
    const-string v2, "quick-draw"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, 0x3

    goto :goto_5

    :sswitch_1
    const-string/jumbo v2, "wiggle_gesture"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v7, 0x2

    goto :goto_5

    :sswitch_2
    const-string v2, "flip_changed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    move v7, v8

    goto :goto_5

    :sswitch_3
    const-string v2, "power_double_tap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    :goto_5
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v3, "QUIK"

    goto :goto_7

    :pswitch_1
    const-string v3, "CLICAM"

    goto :goto_7

    :pswitch_2
    const-string v3, "DTPWR"

    goto :goto_7

    .line 19
    :cond_e
    invoke-static {v6}, Lcom/motorola/camera/MediaControlReceiver;->isMediaAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 20
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "motorola.intent.category.QUICK_LAUNCH"

    .line 21
    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "moto-voice"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_6
    move-object v3, v4

    :cond_10
    :goto_7
    const-string v1, "LNCH"

    .line 23
    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SERVICEMODE"

    .line 24
    invoke-virtual {p1, v1, p0}, Lcom/google/android/exoplayer2/FormatHolder;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "USECASE"

    .line 25
    invoke-virtual {p1, p0, v0}, Lcom/google/android/exoplayer2/FormatHolder;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65d77e51 -> :sswitch_3
        -0x5611b31e -> :sswitch_2
        -0x179a9ecb -> :sswitch_1
        0x6155d524 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
