.class public final Lcom/google/mlkit/common/sdkinternal/zzd;
.super Ljava/lang/ref/PhantomReference;
.source "com.google.mlkit:common@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mlkit/common/sdkinternal/zzd;",
            ">;"
        }
    .end annotation
.end field

.field public final zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzd;->zza:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzd;->zzb:Ljava/lang/Runnable;

    return-void
.end method
