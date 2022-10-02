.class public final Lcom/motorola/camera/reflect/CLIManagerFW;
.super Ljava/lang/Object;
.source "CLIManagerFW.kt"


# static fields
.field public static final ACTION_LID_STATE_CHANGE:Ljava/lang/String;

.field public static final EXTRA_LID_STATE:Ljava/lang/String;

.field public static final LID_ABSENT:I

.field public static final LID_CLOSED:I

.field public static final LID_OPEN:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 4
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "com.motorola.hardware.extra.LID_STATE"

    const-string v5, "com.motorola.hardware.action.ACTION_LID_STATE_CHANGE"

    if-eqz v0, :cond_0

    const-string v0, "com.motorola.hardware.CLIManager"

    const-string v6, "ACTION_LID_STATE_CHANGE"

    .line 6
    invoke-static {v0, v6, v5}, Lcom/google/photos/vision/barhopper/zza;->getDeclaredStringFromClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/motorola/camera/reflect/CLIManagerFW;->ACTION_LID_STATE_CHANGE:Ljava/lang/String;

    const-string v5, "EXTRA_LID_STATE"

    .line 7
    invoke-static {v0, v5, v4}, Lcom/google/photos/vision/barhopper/zza;->getDeclaredStringFromClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/reflect/CLIManagerFW;->EXTRA_LID_STATE:Ljava/lang/String;

    const-string v4, "LID_ABSENT"

    .line 8
    invoke-static {v0, v4, v3}, Lcom/google/photos/vision/barhopper/zza;->getDeclaredIntFromClass(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_ABSENT:I

    const-string v3, "LID_CLOSED"

    .line 9
    invoke-static {v0, v3, v2}, Lcom/google/photos/vision/barhopper/zza;->getDeclaredIntFromClass(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    const-string v2, "LID_OPEN"

    .line 10
    invoke-static {v0, v2, v1}, Lcom/google/photos/vision/barhopper/zza;->getDeclaredIntFromClass(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_OPEN:I

    goto :goto_0

    .line 11
    :cond_0
    sput-object v5, Lcom/motorola/camera/reflect/CLIManagerFW;->ACTION_LID_STATE_CHANGE:Ljava/lang/String;

    .line 12
    sput-object v4, Lcom/motorola/camera/reflect/CLIManagerFW;->EXTRA_LID_STATE:Ljava/lang/String;

    .line 13
    sput v3, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_ABSENT:I

    .line 14
    sput v2, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_CLOSED:I

    .line 15
    sput v1, Lcom/motorola/camera/reflect/CLIManagerFW;->LID_OPEN:I

    :goto_0
    return-void
.end method
