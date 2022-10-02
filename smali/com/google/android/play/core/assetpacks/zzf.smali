.class public final synthetic Lcom/google/android/play/core/assetpacks/zzf;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/assetpacks/zzf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzf;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/zzf;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzf;->zza:Lcom/google/android/play/core/assetpacks/zzf;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/google/android/play/core/assetpacks/zzl;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not sync active asset packs. %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/appupdate/zzy;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
