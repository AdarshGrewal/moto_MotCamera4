.class public final synthetic Lcom/google/mlkit/vision/common/internal/zzf;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/common/internal/zzf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/common/internal/zzf;->zza:Lcom/google/mlkit/vision/common/internal/zzf;

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

    const-class p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
