.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zzb;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzb;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzb;->zza:Lcom/google/mlkit/vision/common/internal/zzb;

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
    sget-object p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "MobileVisionBase"

    const-string v1, "Error preloading model resource"

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
