.class public final synthetic Lcom/google/mlkit/common/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zzb;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzb;->zza:Lcom/google/mlkit/common/internal/zzb;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;-><init>()V

    return-object p0
.end method
