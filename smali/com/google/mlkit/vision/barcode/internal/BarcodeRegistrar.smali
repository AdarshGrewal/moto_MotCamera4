.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    const-class p0, Lcom/google/mlkit/vision/barcode/internal/zzf;

    .line 1
    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 2
    new-instance v2, Lcom/google/firebase/components/Dependency;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object v1, Lcom/google/mlkit/vision/barcode/internal/zzc;->zza:Lcom/google/mlkit/vision/barcode/internal/zzc;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/barcode/internal/zze;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/firebase/components/Dependency;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    const-class p0, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 9
    new-instance v2, Lcom/google/firebase/components/Dependency;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    sget-object p0, Lcom/google/mlkit/vision/barcode/internal/zzd;->zza:Lcom/google/mlkit/vision/barcode/internal/zzd;

    .line 11
    invoke-virtual {v1, p0}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzct;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p0, v2, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 14
    aget-object p0, v2, v4

    if-eqz p0, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const/16 v0, 0x14

    const-string v1, "at index "

    invoke-static {v0, v1, v4}, Landroidx/cardview/R$style$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzco;-><init>([Ljava/lang/Object;I)V

    return-object p0
.end method
