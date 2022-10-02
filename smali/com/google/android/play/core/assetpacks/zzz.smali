.class public final synthetic Lcom/google/android/play/core/assetpacks/zzz;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzan;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/assetpacks/zzz;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzz;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/zzz;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzz;->zza:Lcom/google/android/play/core/assetpacks/zzz;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    sget p0, Lcom/google/android/play/core/internal/zzt;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    .line 1
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/android/play/core/internal/zzu;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/google/android/play/core/internal/zzu;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/play/core/internal/zzs;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/play/core/internal/zzs;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method
