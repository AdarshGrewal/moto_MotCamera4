.class public final synthetic Lcom/google/mlkit/common/internal/zzf;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zzf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzf;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/mlkit/common/internal/zzf;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;-><init>(Lcom/google/mlkit/common/sdkinternal/Cleaner;)V

    return-object p0
.end method
