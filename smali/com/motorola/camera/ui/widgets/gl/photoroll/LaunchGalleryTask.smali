.class public Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;
.super Landroid/os/AsyncTask;
.source "LaunchGalleryTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static mPhotosVersion:[I


# instance fields
.field public final mActivityStarter:Lcom/motorola/camera/ActivityStarter;

.field public final mData:Lcom/motorola/camera/CameraData;

.field public final mIsNewTask:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ActivityStarter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mData:Lcom/motorola/camera/CameraData;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mActivityStarter:Lcom/motorola/camera/ActivityStarter;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mIsNewTask:Z

    return-void
.end method

.method public static addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "start_gallery_from_secure_camera"

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/motorola/camera/SecureDataHelper;->getInstance()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p1

    .line 5
    iget-object v2, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->JSON_FORMAT:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "security_items"

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string p1, "com.google.android.apps.photos.api.secure_mode"

    .line 10
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p1

    .line 12
    iget-object v1, p1, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 13
    :goto_1
    iget-object v2, p1, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 14
    iget-object v2, p1, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_4
    :goto_2
    return-void
.end method

.method public static getDataType(Lcom/motorola/camera/CameraData;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "image/*"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "video/*"

    :goto_0
    return-object p0
.end method

.method public static getGalleryIntent(Lcom/motorola/camera/CameraData;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 13

    .line 1
    sget-object v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->GALLERY:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    const-string v2, "com.motorola.cn.gallery"

    const-string v3, "com.google.android.apps.photos"

    const/4 v4, 0x0

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-eqz p0, :cond_6

    .line 3
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.REVIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "image/*"

    goto :goto_0

    :cond_0
    const-string/jumbo v8, "video/*"

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "processing_uri_intent_extra"

    .line 8
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    invoke-static {v7, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZ)V

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {v7, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    .line 12
    new-instance v8, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v9

    invoke-direct {v8, v7, v6, v0, v9}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    goto :goto_3

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {v7, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :goto_1
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 18
    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 19
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 20
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v6

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 21
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_3

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_3

    if-eqz v1, :cond_4

    move-object v12, v2

    goto :goto_2

    :cond_4
    move-object v12, v3

    .line 22
    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 23
    invoke-static {v7, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZ)V

    .line 24
    new-instance v9, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 25
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v11

    invoke-direct {v9, v7, v6, v0, v11}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    .line 26
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x81

    if-eqz v10, :cond_3

    :cond_5
    move-object v8, v9

    goto :goto_3

    :cond_6
    move-object v8, v6

    :goto_3
    if-nez v8, :cond_d

    if-nez p0, :cond_a

    .line 27
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.APP_GALLERY"

    .line 28
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 30
    invoke-virtual {v10}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 31
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 33
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_7

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_7

    if-eqz v1, :cond_8

    move-object v11, v2

    goto :goto_4

    :cond_8
    move-object v11, v3

    .line 34
    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 35
    invoke-static {v7, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZ)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    move p1, v4

    :goto_5
    if-nez p1, :cond_b

    .line 36
    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_6

    .line 37
    :cond_a
    new-instance v7, Landroid/content/Intent;

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    :cond_b
    :goto_6
    new-instance v8, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    if-nez p0, :cond_c

    goto :goto_7

    .line 39
    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v4

    :goto_7
    invoke-direct {v8, v7, v6, v0, v4}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    :cond_d
    return-object v8
.end method

.method public static isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    const/high16 v3, 0x20000

    .line 5
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public static isGooglePhotosSupportedInCli(Z)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    const-string v2, "/system/priv-app/MotCamera2/MotCamera2.apk"

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    const-wide/32 v3, 0x5f5e100

    .line 5
    rem-long/2addr v1, v3

    const-wide/32 v3, 0x42f47b9

    cmp-long p0, v1, v3

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isPhotosProcessingSupported()Z
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0xb

    .line 1
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPhotosStabilizationSupported(Z)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x3

    const/16 v0, 0x1a

    .line 1
    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhotosVersionSupported(II)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-gt v2, p0, :cond_0

    aget v2, v0, v1

    if-ne v2, p0, :cond_1

    aget p0, v0, v3

    if-lt p0, p1, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public static setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string/jumbo v0, "window"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 4
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/ScreenBrightnessHelper;->getCurrentBrightness()F

    move-result p1

    .line 6
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "brightness"

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static setGalleryPackage(Landroid/content/Intent;ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.motorola.cn.gallery"

    const-string v1, "com.motorola.cn.gallery.app.GalleryActivity"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string/jumbo v0, "start_gallery_from_camera"

    .line 3
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.apps.photos"

    .line 4
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mData:Lcom/motorola/camera/CameraData;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mIsNewTask:Z

    invoke-static {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Z)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 6
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_EDITOR_NOTIFICATION:Lcom/motorola/camera/AppFeatures$Feature;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SHOW_PORTRAIT_EDITOR_NOTIFICATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 9
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mData:Lcom/motorola/camera/CameraData;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->detectSpecialType(J)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f110470

    .line 17
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1100cc

    .line 18
    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 20
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v12, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mData:Lcom/motorola/camera/CameraData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mData:Lcom/motorola/camera/CameraData;

    .line 23
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getDataType(Lcom/motorola/camera/CameraData;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {v12, v1, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x7f1102a2

    .line 25
    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Lcom/motorola/camera/shared/NotificationHelper;->getPhotosNotificationChannelID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "photos_channel_id"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v9, 0x7f080170

    const-string p0, "context"

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "channelId"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "style"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x100

    move-object v2, v0

    invoke-static/range {v2 .. v11}, Lcom/motorola/camera/shared/NotificationHelper;->createBuilder$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/Notification$Style;ILjava/lang/String;I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 v1, 0x64

    .line 28
    invoke-static {v0, v1, p0, v12}, Lcom/motorola/camera/shared/NotificationHelper;->notify(Landroid/content/Context;ILandroid/app/Notification$Builder;Landroid/content/Intent;)V

    .line 29
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SHOW_PORTRAIT_EDITOR_NOTIFICATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mActivityStarter:Lcom/motorola/camera/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    .line 3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_GALLERY_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
