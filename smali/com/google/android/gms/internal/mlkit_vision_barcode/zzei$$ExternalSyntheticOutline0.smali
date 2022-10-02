.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzei$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;


# direct methods
.method public static m(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;Ljava/util/HashMap;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcw;

    .line 2
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method
