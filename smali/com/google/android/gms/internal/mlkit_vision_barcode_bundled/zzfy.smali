.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;

.field public final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzen;->zza:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zza:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzb()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object v2

    .line 17
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;

    .line 18
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)V

    :goto_1
    move-object v0, v3

    goto/16 :goto_2

    .line 19
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    if-eqz v1, :cond_3

    .line 21
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;

    .line 23
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzft;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;)V

    goto :goto_1

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzc()I

    move-result v0

    if-ne v0, v4, :cond_5

    move v1, v4

    :cond_5
    if-eqz v1, :cond_6

    .line 28
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 29
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 30
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    .line 32
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    move-result-object v0

    goto :goto_2

    .line 34
    :cond_6
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 35
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 36
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    const/4 v6, 0x0

    .line 37
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    .line 38
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    move-result-object v0

    goto :goto_2

    .line 39
    :cond_7
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzc()I

    move-result v0

    if-ne v0, v4, :cond_8

    move v1, v4

    :cond_8
    if-eqz v1, :cond_a

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 41
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 42
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    .line 43
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;

    if-eqz v6, :cond_9

    .line 44
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    move-object v3, v0

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    move-result-object v0

    goto :goto_2

    .line 46
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;

    .line 49
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 50
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgk;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    const/4 v6, 0x0

    .line 51
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;

    .line 52
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfv;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfs;

    move-result-object v0

    .line 53
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfy;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgi;

    if-nez p0, :cond_b

    goto :goto_3

    :cond_b
    return-object p0

    :cond_c
    :goto_3
    return-object v0
.end method
