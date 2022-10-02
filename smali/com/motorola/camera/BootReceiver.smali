.class public Lcom/motorola/camera/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/BootReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    sget p0, Lcom/motorola/camera/SimStateReceiver;->$r8$clinit:I

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/CountryDetector;->hasStoredCountry(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1, v0}, Lcom/motorola/camera/SimStateReceiver;->enableReceiver(Landroid/content/Context;Z)V

    .line 4
    :cond_0
    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 5
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DOCUMENT_SCAN:Lcom/motorola/camera/AppFeatures$Feature;

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {p0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/motorola/camera/CameraScan;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 9
    :goto_0
    invoke-virtual {v1, v2, p0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 12
    new-instance p0, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;

    invoke-direct {p0, p1}, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 13
    sget p0, Lcom/motorola/camera/utility/ClearCacheService;->$r8$clinit:I

    .line 14
    const-class p0, Lcom/motorola/camera/utility/ClearCacheService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 15
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    sget-object p0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter p0

    const/16 v2, 0x64

    .line 17
    :try_start_0
    invoke-static {p1, v1, v0, v2}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 19
    invoke-virtual {v0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-class p0, Landroid/app/ActivityManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_2

    .line 22
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    const-string p1, "com.google.android.apps.photos"

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method
