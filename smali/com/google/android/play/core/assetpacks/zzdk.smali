.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdk;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzdo;

.field public final synthetic zzb:I

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdo;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzb:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzb:I

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 1
    :try_start_0
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/play/core/assetpacks/zzdo;->zzp(ILjava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/google/android/play/core/common/LocalTestingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdo;->zza:Lcom/google/android/play/core/appupdate/zzy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "notifyModuleCompleted failed"

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/appupdate/zzy;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
