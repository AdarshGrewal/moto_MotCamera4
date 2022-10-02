.class public final Lcom/motorola/camera/launch/LaunchManager;
.super Ljava/lang/Object;
.source "LaunchManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;
    }
.end annotation


# static fields
.field public static final CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

.field public final flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

.field public lidValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/16 v1, 0x1f

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    const/16 v5, 0x9

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v0, v3

    .line 5
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

    .line 6
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;-><init>(Lcom/motorola/camera/launch/LaunchManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    .line 3
    sget v0, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_ABSENT:I

    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    return-void
.end method


# virtual methods
.method public final launch(Landroid/app/Activity;ZII)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x14000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 5
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_OPEN:I

    if-ne p4, v1, :cond_0

    const-string v1, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    goto :goto_0

    :cond_0
    const-string v1, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 7
    :cond_1
    sget v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_OPEN:I

    if-ne p4, v1, :cond_2

    const-string v1, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW"

    goto :goto_1

    :cond_2
    const-string v1, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_2
    const-string v1, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_4

    const-string p2, "com.android.systemui.camera_launch_source"

    const-string v1, "flip_changed"

    .line 10
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_4
    sget p2, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    const/4 v1, 0x0

    if-ne p4, p2, :cond_5

    .line 12
    sget p2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    .line 13
    const-class p4, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 14
    :cond_5
    const-class p2, Lcom/motorola/camera/Camera;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move p2, v1

    .line 15
    :goto_3
    sget p4, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne p2, p4, :cond_6

    const/4 p4, 0x1

    goto :goto_4

    :cond_6
    move p4, v1

    :goto_4
    if-eqz p4, :cond_9

    .line 16
    sget-object p4, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-nez p4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 17
    :goto_5
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_6

    :cond_8
    move p3, v1

    goto :goto_6

    .line 18
    :cond_9
    sget-object p4, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-nez p4, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 19
    :goto_6
    sget-object p4, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 20
    invoke-static {p3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 22
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
