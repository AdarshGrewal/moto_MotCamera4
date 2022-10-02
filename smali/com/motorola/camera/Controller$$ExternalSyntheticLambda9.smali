.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

.field public static final synthetic INSTANCE$com$motorola$camera$settings$SettingsManager$$InternalSyntheticLambda$0$0a17abbf1d16c2c5263aab82abfd2b85889ea826e9b8f692c0e5d6fb2a28b25e$0:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;->INSTANCE:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;->INSTANCE$com$motorola$camera$settings$SettingsManager$$InternalSyntheticLambda$0$0a17abbf1d16c2c5263aab82abfd2b85889ea826e9b8f692c0e5d6fb2a28b25e$0:Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget v2, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-ne v2, v0, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput v0, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 10
    :goto_1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
